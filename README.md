# Professional Video Editor for Codex

> **A disciplined, production-minded video editing workflow for Codex.**
>
> Analyze the footage, make an edit plan, execute deliberately, validate the export and deliver with confidence.

[![Codex Skill](https://img.shields.io/badge/Codex-Skill-111827?style=flat-square)](#quick-start)
[![License: MIT](https://img.shields.io/badge/License-MIT-16a34a?style=flat-square)](LICENSE)
[![Workflow](https://img.shields.io/badge/Workflow-plan--edit--verify-2563eb?style=flat-square)](#the-workflow)

## Professional editing starts before the first cut

A good edit is not a collection of transitions. It is a clear sequence of decisions: understand the footage, define the objective, plan the story, edit with purpose and review the final export.

**Professional Video Editor for Codex** is an open-source skill that guides Codex through that workflow inside the current workspace. It helps with analysis, edit planning, rhythm, continuity, captions, sound, color, rendering and quality control, without creating a separate website or assuming that flashy effects improve every video.

## What it does

| Stage | What the skill guides | Why it matters |
|---|---|---|
| **Inspect** | Reads media metadata and can generate a contact sheet. | Understand format, duration and usable footage first. |
| **Plan** | Creates a specific edit plan before touching the timeline. | Every cut has a purpose, not just a timestamp. |
| **Edit** | Applies decisions about structure, pacing, continuity, audio, captions and color. | Keeps the video coherent and on-brand. |
| **Render** | Chooses an appropriate export workflow using available tools. | Avoids guessing about the deliverable. |
| **Verify** | Checks decodability, metadata, visual signals and loudness when supported. | Catch problems before handoff. |
| **Deliver** | Records what was done, what was checked and what could not be verified. | Keeps the process honest and usable. |

## The workflow

```text
Footage + brief → Inspect → Edit plan → Edit → Render → Quality control → Deliver
```

### 1. Inspect the material
The skill starts by understanding the files: format, duration, resolution, frame rate, audio streams and, when possible, a visual contact sheet across the footage.

### 2. Create an edit plan
Before any timeline change, Codex prepares an **edit decision list** with:

- the objective and intended viewer;
- the strongest opening and narrative structure;
- proposed cuts with time references and reasons;
- decisions for pacing, B-roll, captions, music, sound and color;
- what must be checked after export.

### 3. Edit with restraint
Effects, zooms, animations, transitions and motion design are optional tools, not requirements. The skill uses them only when they make the story, clarity or pacing better.

### 4. Validate the final render
When compatible tools are available, the workflow checks that the export decodes correctly and records technical information, visual diagnostics and loudness measurements. Diagnostics are signals for review, never a fake automatic approval.

## Quick start

1. Put the video files in the active workspace.
2. Install this folder as `professional-video-editor` in the skills directory used by your Codex setup.
3. Ask Codex to use the skill and give it a focused brief.

```text
Use professional-video-editor to turn these interview clips into a 60-second
vertical Instagram Reel. Start with the strongest statement, remove pauses and
repetitions, add clear Portuguese captions, keep the tone professional and export
in 1080×1920. Create an edit plan before editing and validate the final render.
```

> A common local installation path is `~/.agents/skills/professional-video-editor/`. For a project-only skill, use `.agents/skills/professional-video-editor/`. The exact path depends on the Codex version and configuration.

## What makes it professional

### Plan before editing
The skill requires a specific plan before changing the timeline. That helps avoid random cuts, incoherent pacing and “let’s add an effect” editing.

### Let the material choose the style
It can research references when useful, record the sources and adapt principles without copying someone else’s work. A polished interview, testimonial, vlog, ad and short-form social video do not need the same visual language.

### Verify what was actually done
The process records available checks and limitations. It does not claim that a render, codec, caption or effect was verified when the workspace could not verify it.

### Work locally and protect private footage
Scripts process local files. They do not upload media, install dependencies or send assets to a cloud service by themselves.

## Included tools and guides

| Resource | Purpose |
|---|---|
| [`SKILL.md`](SKILL.md) | Core instructions and workflow for Codex. |
| [`scripts/inspect_media.sh`](scripts/inspect_media.sh) | Metadata inspection and optional contact sheet. |
| [`scripts/validate_export.sh`](scripts/validate_export.sh) | Decode check plus technical, visual and loudness reports. |
| [`references/edit-decision-list.md`](references/edit-decision-list.md) | Template for purposeful edit decisions. |
| [`references/quality-control.md`](references/quality-control.md) | Final checklist for image, audio, captions, framing and delivery. |
| [`references/research-and-inspiration.md`](references/research-and-inspiration.md) | Guidance for responsible research and inspiration. |
| [`references/tool-selection.md`](references/tool-selection.md) | Choosing tools based on the real task and available capabilities. |

## Typical use cases

- Social clips and vertical Reels
- Talking-head videos and podcasts
- Testimonials and client case studies
- Promotional videos for products or services
- YouTube edits and highlights
- Educational content with captions
- Internal videos that need a clean final pass

## Requirements and limits

- The skill guides the workflow. It does not bundle or automatically install FFmpeg, codecs, editing apps or AI services.
- `FFmpeg` and `ffprobe` must be available to use the included inspection and validation scripts.
- Codex must have access to the footage and compatible editing tools.
- It does not replace human creative judgment, client approval or rights clearance for music, footage, logos and references.
- Never commit client footage, private project files, credentials or access keys to this repository.
- This is a community project and is not an official OpenAI product.

## Contributing

Contributions are welcome, especially improvements to editing guidance, quality-control checks, template clarity and safe workflow automation. Please read [CONTRIBUTING.md](CONTRIBUTING.md) before opening a contribution.

## License

Distributed under the [MIT License](LICENSE).
