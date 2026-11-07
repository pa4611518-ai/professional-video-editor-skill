#!/usr/bin/env bash
# Technical export checks. Findings from black/freeze detection require editorial review.
set -euo pipefail
if [[ $# -ne 2 ]]; then
  echo "Usage: validate_export.sh EXPORTED_VIDEO REPORT_DIR" >&2
  exit 2
fi
INPUT=$1
OUTDIR=$2
[[ -f "$INPUT" ]] || { echo "Export not found: $INPUT" >&2; exit 2; }
[[ -s "$INPUT" ]] || { echo "Export exists but is empty: $INPUT" >&2; exit 2; }
command -v ffprobe >/dev/null 2>&1 || { echo "ffprobe is required but was not found on PATH." >&2; exit 127; }
command -v ffmpeg >/dev/null 2>&1 || { echo "ffmpeg is required but was not found on PATH." >&2; exit 127; }
mkdir -p "$OUTDIR"
BASE=$(basename "$INPUT")
ffprobe -v error -show_format -show_streams -of json "$INPUT" > "$OUTDIR/${BASE}.ffprobe.json"
ffprobe -v error -show_entries format=filename,duration,size,bit_rate:stream=index,codec_type,codec_name,width,height,r_frame_rate,avg_frame_rate,sample_rate,channels,channel_layout -of default=noprint_wrappers=1 "$INPUT" > "$OUTDIR/${BASE}.summary.txt"
# Decode the entire file; a non-zero exit indicates a technical problem.
ffmpeg -hide_banner -v error -i "$INPUT" -f null - 2> "$OUTDIR/${BASE}.decode-errors.txt"
# Detection is diagnostic only: intentional black frames or static shots can be valid.
ffmpeg -hide_banner -i "$INPUT" -vf "blackdetect=d=0.25:pix_th=0.10,freezedetect=n=-50dB:d=2" -an -f null - 2> "$OUTDIR/${BASE}.visual-diagnostics.txt" || true
# Loudness report is measured when an audio stream exists; do not auto-normalize without intent.
if ffprobe -v error -select_streams a:0 -show_entries stream=index -of csv=p=0 "$INPUT" | grep -q .; then
  ffmpeg -hide_banner -i "$INPUT" -vn -af ebur128=framelog=verbose -f null - 2> "$OUTDIR/${BASE}.loudness-report.txt" || true
else
  printf 'No audio stream detected.\n' > "$OUTDIR/${BASE}.loudness-report.txt"
fi
printf 'Technical validation reports saved in: %s\n' "$OUTDIR"
printf 'Review these files: %s\n' "$OUTDIR/${BASE}.summary.txt" "$OUTDIR/${BASE}.decode-errors.txt" "$OUTDIR/${BASE}.visual-diagnostics.txt" "$OUTDIR/${BASE}.loudness-report.txt"
printf 'Note: successful decoding and metadata checks do not prove editorial quality; inspect the rendered picture and sound.\n'
