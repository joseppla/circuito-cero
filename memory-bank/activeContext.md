# Active Context

## Current stage
Project concept and MVP plan are defined. The next milestone is to establish a reliable coding-agent workflow and build the smallest playable economy prototype.

## Immediate next steps
1. Confirm the project folder and inspect its current contents before creating or overwriting files.
2. Ensure the project is a valid Godot 4 project; create it in Godot if it does not exist yet.
3. Initialize Git if not already initialized.
4. Compare `qwen2.5-coder:7b` and the already-working `gemma4:latest` using the same small OpenCode task.
5. Implement the first economy prototype: €500 starting cash, one laptop offer priced at €120, a buy button, inventory update, insufficient-funds protection, and duplicate-purchase protection.
6. Open and run the project in Godot. Verify the behavior manually and with automated/headless checks where practical.
7. Only after this is stable, proceed to diagnosis, repairs, sales, save/load, art, and Android testing.

## First task prompt
" We are developing Circuito Cero, a 2D top-down electronics repair and resale simulator for Android using Godot 4 and GDScript.

Implement only the first functional economy prototype:
- Player starts with €500.
- One laptop offer costs €120.
- The player can buy it through a button.
- Cash updates immediately.
- The laptop appears in inventory.
- Purchase fails if the player cannot afford it.
- The unique offer cannot be purchased twice.
- Keep economy logic separate from UI.
- Use Godot 4-compatible GDScript.
- Create the required files in the current project.
- Do not download external assets.
- Do not add unrequested features.
- Preserve existing files unless changes are necessary.
- Run available checks and fix errors.
- At the end, report files changed, how to run the prototype, checks performed, and known limitations."

## Current blockers / unknowns
- ADB access to the Xiaomi was previously blocked by USB permissions (`no permissions`). Verify current status.
- The exact current OpenCode/Ollama model configuration should be checked rather than assumed.
- The Godot project may or may not already exist in the intended folder; inspect before acting.
