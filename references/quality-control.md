# Professional video quality-control checklist

## Picture and editorial

- Confirm the opening establishes the subject quickly without removing needed context.
- Review every cut for continuity, clipped words/actions, unintended flashes, black gaps, repeated frames, and abrupt ending.
- Review the complete video when feasible; at minimum inspect the beginning, middle, end, and every high-risk edit/effect.
- Check focus, exposure, white balance, mixed lighting, skin/product color, compression artifacts, stabilization warping, and crop safety.
- For vertical reframing, track the actual subject and preserve headroom, hands, products, text, and relevant action. Never assume a center crop is acceptable.
- Check captions and graphics for exact wording, timing, line breaks, contrast, safe areas, mobile readability, and collision with faces or products.

## Audio

- Confirm dialogue is intelligible and synchronized; listen for cut-off consonants, clipped words, abrupt ambience changes, clicks, hum, pumping, and clipping.
- Check the mix on headphones or speakers if available. A waveform or loudness report does not replace listening.
- Measure loudness when appropriate. Use platform/broadcast targets only when requested or appropriate for the destination; do not normalize blindly to one fixed value for every project.
- Check music rights and ensure music or effects do not obscure speech.

## Export integrity

- Verify the final file exists, is non-empty, decodes fully, and has the intended streams, duration, resolution, aspect ratio, frame rate, codec, and audio sample rate/channel layout.
- Check the output on a representative player or playback method if available.
- Review black/freeze diagnostics as flags for inspection, not automatic proof of a defect: intentional black frames and static shots can be valid.
- Confirm the render matches the EDL and user's brief. If an issue is found, fix it and re-render when practical.
- Report which checks actually ran. Never equate a successful FFmpeg exit with professional approval.

## Delivery gate

Do not call the export final until all applicable checks pass or any remaining limitation is explicitly recorded. Preserve source and project files, and provide the verified final path.
