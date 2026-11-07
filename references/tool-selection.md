# Tool selection and capability boundaries

Choose tools based on the actual task, current environment, and permission—not on brand preference.

1. **Inspect:** `ffprobe` for streams and metadata; `ffmpeg` for contact sheets, scene/silence diagnostics, decoding, and repeatable transformations.
2. **Transcribe:** use a locally installed speech recognizer when dialogue timing materially improves edit decisions. Check model availability, language support, and privacy before use.
3. **Edit:** FFmpeg is suitable for deterministic trims, filters, audio work, subtitles, reframing, and encoding. Use an installed non-linear editor (for example, DaVinci Resolve) when a complex timeline or an editable native project is required and the application is available.
4. **Motion graphics:** use a compositor or programmable graphics tool only when the brief benefits from designed animation, tracking, or compositing. Do not introduce Remotion, Blender, or another framework for a simple trim.
5. **Preview and review:** use playback, representative frame extraction/contact sheets, waveform/loudness reports, and short test renders according to risk.
6. **Verify:** use `scripts/inspect_media.sh` and `scripts/validate_export.sh` when FFmpeg/ffprobe are available. Read their output and still review the actual result.

Do not install dependencies, download models, upload private footage, use paid services, or access credentials without the authorization required by the environment and the user's instructions. If a required tool is missing, use a safe available alternative or state the precise blocker.
