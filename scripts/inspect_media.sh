#!/usr/bin/env bash
# Read-only media inspection. Requires ffprobe; ffmpeg is needed for the contact sheet.
set -euo pipefail
if [[ $# -ne 2 ]]; then
  echo "Usage: inspect_media.sh INPUT_VIDEO OUTPUT_DIR" >&2
  exit 2
fi
INPUT=$1
OUTDIR=$2
[[ -f "$INPUT" ]] || { echo "Input file not found: $INPUT" >&2; exit 2; }
command -v ffprobe >/dev/null 2>&1 || { echo "ffprobe is required but was not found on PATH." >&2; exit 127; }
mkdir -p "$OUTDIR"
BASENAME=$(basename "$INPUT")
SAFE=${BASENAME%.*}
ffprobe -v error -show_format -show_streams -of json "$INPUT" > "$OUTDIR/${SAFE}.ffprobe.json"
ffprobe -v error -show_entries format=filename,duration,size,bit_rate:stream=index,codec_type,codec_name,width,height,r_frame_rate,avg_frame_rate,sample_rate,channels,channel_layout -of default=noprint_wrappers=1 "$INPUT" > "$OUTDIR/${SAFE}.summary.txt"
printf 'Metadata saved to: %s\n' "$OUTDIR/${SAFE}.summary.txt"
printf 'Full ffprobe JSON: %s\n' "$OUTDIR/${SAFE}.ffprobe.json"
if command -v ffmpeg >/dev/null 2>&1; then
  DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$INPUT")
  [[ "$DURATION" =~ ^[0-9]+([.][0-9]+)?$ ]] && awk "BEGIN { exit !($DURATION > 0) }" || {
    echo "Could not determine a positive duration; skipped contact sheet." >&2
    exit 1
  }
  # Sample up to 16 frames across the full duration. This is navigation, not full review.
  ffmpeg -hide_banner -loglevel error -y -i "$INPUT" \
    -vf "fps=16/${DURATION},scale=320:-1:force_original_aspect_ratio=decrease,pad=320:180:(ow-iw)/2:(oh-ih)/2,tile=4x4:nb_frames=16" \
    -frames:v 1 "$OUTDIR/${SAFE}.contact-sheet.jpg" || {
      echo "Contact sheet generation failed; metadata files were still created." >&2
      exit 1
    }
  printf 'Contact sheet: %s\n' "$OUTDIR/${SAFE}.contact-sheet.jpg"
else
  echo "ffmpeg not found; skipped contact sheet. Metadata inspection completed." >&2
fi
