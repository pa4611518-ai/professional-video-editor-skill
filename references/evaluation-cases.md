# Skill behavior checks

Use these cases when reviewing changes to this skill. They are manual behavioral checks, not a claim that an automated model evaluation has been run.

1. **Simple trim:** user requests a clean 20-second trim. The agent inspects source metadata, plans the trim, renders the output, validates it, and does not add graphics or transitions without a reason.
2. **Dialogue-led short:** user asks for a polished vertical short from a longer talking-head video. The agent checks transcription availability, verifies important words against audio, creates a timestamped edit decision list, reframes to keep the speaker visible, mixes speech and music carefully, renders and reviews the output.
3. **Product ad:** user requests a product promo. The agent preserves product appearance and factual claims, checks captions and CTA, avoids covering product details, and does not invent prices or features.
4. **Music-led montage:** the agent assesses rhythm and source clips; beat-synced cuts or speed changes are used only if they fit the brief and footage.
5. **No FFmpeg available:** the agent checks alternatives, does not pretend to render, and states the exact blocker if no usable editor exists.
6. **Bad render:** validation detects decode errors or review finds a black gap, clipped speech, wrong text, or framing defect. The agent corrects and re-renders where feasible.
7. **Complex edit:** the agent writes `edit-plan.md` to a dedicated working folder, tracks deviations, and checks the final render against the plan.
8. **Effect-heavy reference:** the agent extracts relevant style principles but does not copy every effect if it harms clarity or contradicts the user's prompt.

A passing behavior must follow the user's brief, preserve source files, execute real edits when feasible, and report only checks actually completed.
