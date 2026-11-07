# Research-informed editing workflow

This reference records the useful workflow patterns found in public video-editing skills and official Codex skill guidance. It is a synthesis, not a copy of another project's source code. Use the user's brief and actual footage as the authority for creative decisions.

## Patterns worth adopting

- **Inspect before editing:** read media metadata and inspect the actual picture and sound before selecting a workflow.
- **Plan from evidence:** map scenes, transcribe dialogue when useful, use timestamps to find candidate cuts, and verify important speech against the source audio.
- **Separate editorial intent from execution:** write a concise edit decision list before changing the timeline, then execute it as a checklist.
- **Use reproducible local tools where suitable:** FFmpeg/ffprobe and small local scripts can support inspection, rendering, and validation. Choose tools based on the task and what is already available; do not assume a specific editor or dependency is installed.
- **Render and inspect:** verify metadata and decodability, then review the visual and audio result where feasible. A successful command alone does not prove an edit is good.
- **Keep scope controlled:** optional captions, overlays, motion graphics, and effects should be used only when requested or when they materially improve the video.
- **Be honest about validation:** distinguish technical checks from full visual/audio review and never claim checks that were not performed.

## Public sources reviewed

- OpenAI, “Build skills”: https://learn.chatgpt.com/docs/build-skills — skill structure, progressive disclosure, and skill discovery in Codex.
- OpenAI, “Customization overview”: https://learn.chatgpt.com/docs/customization/overview — roles of skills, workspace guidance, scripts, and references.
- Adobe Premiere, “Perform J-cuts and L-cuts”: https://helpx.adobe.com/premiere/desktop/edit-projects/trim-clips/perform-j-cuts-and-l-cuts.html — audio/video timing and continuity.
- Adobe Premiere, “Color correction workflow”: https://helpx.adobe.com/br/premiere/desktop/correct-color/color-correction-fundamentals/color-correction-workflow.html — technical correction and matching shots before creative grading.
- Blackmagic Design, “DaVinci Resolve 20 Fairlight Audio Post”: https://documents.blackmagicdesign.com/UserManuals/DaVinciResolveFairlightAudioPost.pdf — dialogue editing, repair, mixing, and finishing.
- AxelkHellberg, `codex-video-use`: https://github.com/AxelkHellberg/codex-video-use — transcription-led editing, timestamp-aware cuts, subtitle workflows, and review artifacts.
- kajisho5, `ffmpeg-skill`: https://github.com/kajisho5/ffmpeg-skill — inspect/edit/verify workflow, local media processing, captions, reframing, audio, and delivery checks.
- agamm, `video-agent`: https://github.com/agamm/video-agent — distinct editing subskills for editorial planning, cutting rhythm, filler removal, captions, audio, color, overlays, transitions, and social reframing.
- Alex2135, `codex-video-editor`: https://github.com/Alex2135/codex-video-editor — local-first reproducibility, constrained workflows, immutable revisions, and render quality checks.
- 6missedcalls, `video-editing-skill`: https://github.com/6missedcalls/video-editing-skill — practical FFmpeg workflows for trims, silence, captions, overlays, and speed.

## Cautions

- Public repositories differ in maturity, scope, dependencies, and maintenance. Do not blindly install or combine them.
- Some workflows depend on Whisper models, Python packages, external APIs, MCP servers, or paid services. Use only when present and authorized; never assume availability.
- Do not copy another project's code or large sections of its skill. Reuse general workflow ideas, respect each repository's license, and keep this skill's instructions original.
- The skill entrypoint should stay concise and route to focused reference files; scripts should be used for repeatable deterministic checks, not to replace judgment. This follows the official Codex skill guidance on progressive disclosure.
- Editorial craft should be taught as decision rules: intent, structure, rhythm, continuity, dialogue integrity, sound-first finishing, and correction-before-grading. Adobe and Blackmagic documentation provide tool-specific workflows that can inform these decisions without forcing one editor.
- FFmpeg is an execution tool, not a substitute for editorial judgment. A technically valid render can still be badly paced, visually confusing, or inconsistent with the brief.
- sepehrsariaslani, `video-edit-skill`: https://github.com/sepehrsariaslani/video-edit-skill — editable DaVinci Resolve projects and local supporting toolchain; use only when the editor and dependencies are available.
- genchebur90-debug, `video-editor-skill`: https://github.com/genchebur90-debug/video-editor-skill — audio loudness, subject-aware vertical reframing, pacing, color, and pre-publish QC ideas.
- diffusionstudio, `editor`: https://github.com/diffusionstudio/editor — agent-oriented editable video workflow; a separate editor environment is not a requirement for this skill.
- OpenAI, “Build skills”: https://developers.openai.com/plugins/build/skills — organize a skill with `SKILL.md`, references, and scripts; use deterministic scripts for repeatable mechanics when justified.
- OpenAI, “Testing Agent Skills Systematically with Evals”: https://developers.openai.com/blog/eval-skills — evaluate whether a skill activates correctly and follows the intended behavior rather than relying on subjective confidence alone.
