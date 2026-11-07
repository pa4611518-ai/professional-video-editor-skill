# Audio and color finishing guide

Apply only the corrections that solve an observed problem or meet the brief. This guide is a decision sequence, not a preset.

## Audio finishing order

1. **Inspect:** listen to source audio and identify speech, music, ambience, noise, clipping, hum, plosives, handling noise, abrupt edits, and sync problems.
2. **Edit before processing:** remove or shorten unwanted sounds only when doing so preserves meaning, performance, and natural room tone. Keep source tracks intact.
3. **Repair conservatively:** use noise reduction or de-hum only when needed. Compare before/after; artifacts such as watery speech, pumping, metallic tones, or missing consonants mean the processing is too strong.
4. **Make speech intelligible:** balance dialogue first. Use EQ, compression, de-essing, and automation only when the material benefits. Avoid making every voice unnaturally loud or flat.
5. **Balance layers:** music and effects should support, not mask, dialogue or important environmental sound. Use automation/ducking where useful, with smooth transitions.
6. **Transitions:** use short fades or crossfades to prevent clicks and abrupt changes, but do not fade every cut if it weakens the scene. Preserve natural ambience across edits when available.
7. **Measure and listen:** peak/loudness meters are useful checks but do not replace listening. Follow explicit platform/broadcast loudness specs when supplied; otherwise choose a sensible target for the content and destination instead of blindly applying one universal number.
8. **Verify:** listen to the beginning, middle, ending, and every high-risk audio edit. Check sync, clipping, channel layout, and whether the music ends cleanly.

## Color workflow

1. **Protect the source:** inspect the source profile, bit depth, color space, HDR/SDR status, and exposure where the tools expose that information. Do not blindly apply LUTs or convert HDR to SDR without understanding the pipeline.
2. **Correct first:** balance white balance/tint, exposure, contrast, highlights, shadows, and saturation to recover a natural, usable image where possible.
3. **Match shots:** make adjacent shots look consistent in exposure, white balance, contrast, and skin/product color before applying a creative look. Do not force matching if the lighting intentionally changes.
4. **Grade second:** apply a creative look only when requested or useful to the mood/brand. Use a light touch and compare against the source.
5. **Check artifacts:** watch for crushed blacks, clipped highlights, oversaturation, color casts, banding, noise amplification, skin tones that drift, and product colors becoming inaccurate.
6. **Check in motion:** review several seconds, not only a still frame, because exposure shifts, flicker, mixed lighting, and temporal artifacts may only be visible during playback.

## Professional restraint

- Upscaling, denoising, stabilization, sharpening, and frame interpolation cannot restore information that was never captured. Use them only when they improve the actual deliverable and do not introduce worse artifacts.
- Do not invent missing dialogue or claim that a technical correction restored original detail.
- If the environment cannot preview the output or listen to audio, report that limitation accurately.

## Sources for further workflow detail

- Adobe Premiere, color-correction workflow: https://helpx.adobe.com/br/premiere/desktop/correct-color/color-correction-fundamentals/color-correction-workflow.html
- Blackmagic Design, Fairlight Audio Guide to DaVinci Resolve 20: https://documents.blackmagicdesign.com/UserManuals/DaVinciResolveFairlightAudioPost.pdf
- Adobe Premiere, J-cuts and L-cuts: https://helpx.adobe.com/pt/premiere/desktop/edit-projects/trim-clips/perform-j-cuts-and-l-cuts.html
