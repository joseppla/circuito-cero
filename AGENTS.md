# Agent Instructions — Circuito Cero

## Role
You are the coding agent for **Circuito Cero**, a small 2D electronics repair and resale business simulator built with Godot 4 and GDScript. Work in the existing project directory and help the solo developer build the game incrementally.

## Non-negotiable workflow
1. Read the relevant files in `memory-bank/` before making significant changes.
2. At the start of a task, inspect the existing project and identify the smallest safe change.
3. Work only inside the project workspace unless the user explicitly authorizes otherwise.
4. Do not overwrite or delete existing files without a clear reason. Explain potentially destructive changes before making them.
5. Implement one small, testable task at a time. Do not attempt to build the entire game in one pass.
6. Prefer simple, readable Godot 4 GDScript and clear separation between game rules and UI.
7. Do not download external assets or use internet resources unless explicitly requested.
8. Run available checks or Godot headless validation when practical. Never claim tests passed unless they were actually run.
9. After changes, report: files changed, behavior implemented, checks run and their results, and known limitations.
10. If requirements are ambiguous or a decision would materially affect architecture/gameplay, ask one concise question instead of guessing.

## Project safety and quality
- Keep economy calculations centralized; do not duplicate financial rules in UI scripts.
- Validate purchases and sales in the game logic, not only by disabling UI buttons.
- Prevent negative cash balances unless a future design explicitly introduces debt.
- Avoid duplicate purchases when only one item is available.
- Use stable identifiers for device definitions and inventory instances where needed.
- Keep device definitions separate from per-device state (e.g. hidden fault, repair state, purchase cost).
- Save data should be versionable and validated when loading.
- Do not introduce large frameworks or unnecessary abstractions for the MVP.
- Keep Android touch controls and small-screen readability in mind.
- Use fictional device names and brands unless the user explicitly requests otherwise.

## Definition of done for a task
A task is done only when:
- The requested behavior is implemented in the project files.
- Relevant edge cases are handled.
- Available checks have been run, or the report explicitly says why they could not be run.
- The memory bank is updated if project status, architecture, decisions, or next steps changed.

## Memory-bank maintenance
Keep `memory-bank/activeContext.md` and `memory-bank/progress.md` current. Record confirmed facts separately from assumptions. Do not mark work complete based only on code being generated; require verification.
