---
name: professional-video-editor
description: Analyze, plan, edit, render, inspect and deliver user-provided videos in the current Codex workspace. Use for video editing, short clips, captions, audio and color cleanup, motion design and export quality control.
---

# Professional Video Editor

## Core rule
Analyze first. Choose treatment second. Edit third. Review before delivery. Do real editing work when the workspace permits it. Do not create a website or stop at advice when an actual edit and render are feasible.

Do not force fast pacing, color grades, captions, transitions, zooms or effects onto every video. Motion design is optional and belongs only when it improves clarity, storytelling or an explicit creative brief.

## Workflow
1. Read the brief and inspect the workspace. Identify objective, audience, platform, tone, constraints, duration, aspect ratio, delivery settings, source media, references and available tools.
2. Preserve original media. Use separate working and output folders. Never overwrite sources.
3. Before choosing treatment, read `references/research-and-inspiration.md` when links, named styles, platform conventions, trends, time-sensitive facts or vague style terms matter. Record only research actually performed. Extract general principles; never copy protected media, templates, logos or recognizable creative identity. Verify claims that will appear in the video.
4. Inspect the actual footage before making editorial claims. When available, run `scripts/inspect_media.sh INPUT OUTPUT_DIR`; review metadata and representative frames. Scene detection and automatic transcripts are guides, not proof.
5. Create an edit plan before changing media. For complex work, save `edit-plan.md` from `templates/edit-plan.md`; include objective, research decision, footage map, edit decisions, audio/picture/text treatment, render settings and acceptance checks. Never invent timecodes or dialogue.
6. Follow the plan. Make purposeful cuts, preserve meaning and important context, and use captions, cleanup, color, reframing, stabilization, graphics or effects only when useful. Do not obscure speech with music or use unlicensed material.
7. Use only tools that are available and authorized. Do not install packages, access accounts, upload private media or incur costs without authorization. If a workflow fails, try a compatible alternative and report the real limitation.
8. Render to the requested format. When unspecified, choose sensible compatible settings, usually MP4/H.264 where suitable. Do not stretch video.
9. After rendering, use `scripts/validate_export.sh EXPORTED_VIDEO REPORT_DIR` when FFmpeg and ffprobe are available. Read `references/quality-control.md`. Confirm output exists, decodes, and has expected duration, resolution, frame rate, codecs and audio streams. Treat black-frame, freeze and loudness reports as diagnostic signals, not automatic approval.
10. Review the final export visually and audibly where feasible. Deliver the verified file with its location, key editorial choices, export settings and material limitations.

## Final check
Every change must support the objective, preserve factual meaning, improve the result, remain feasible and be checkable. If not, leave it out. Never claim that research, a render, an effect or a review happened unless it actually did.
