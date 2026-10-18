# Project Brief — Circuito Cero

## One-sentence pitch
Circuito Cero is a 2D top-down pixel-art business simulator where the player buys second-hand electronics, diagnoses hidden faults, decides what is worth repairing, and resells devices for profit.

## Product goal
Build a small, playable Android game prototype with a €0 initial budget, using existing hardware and free/local tools. Validate the core gameplay before investing in a large content set.

## Target platform
- Primary: Android.
- Development platform: Linux desktop.
- Engine: Godot 4.
- Language: GDScript.
- Coding workflow: OpenCode or an existing VS Code agent connected to local Ollama models.

## Core player loop
1. Browse second-hand offers with incomplete information.
2. Buy a device if the risk/reward seems worthwhile.
3. Inspect and diagnose symptoms using tools.
4. Decide whether to repair, resell as-is, or sell for parts.
5. Pay for diagnostics and replacement parts.
6. Sell the device and calculate the net result.
7. Reinvest profits and gradually improve the business.

## MVP scope
The first playable version should include:
- One compact workshop.
- Three fictional device categories: laptop, game console, and amplifier.
- Six possible faults in total.
- Three diagnostic tools.
- A simple market with device purchase offers.
- Inventory and per-device state.
- Repair decisions, parts costs, and repair outcomes.
- Device resale and clear profit/loss accounting.
- Local save/load.
- A short play session of roughly 10–15 minutes.

## Out of scope for the first MVP
- Multiplayer or online services.
- Employees and staff management.
- Large-scale workshop construction or freeform decorating.
- Hundreds of devices or a detailed real-world electronics simulator.
- Cloud saves.
- Ads, in-app purchases, or complex monetization.
- Real manufacturer trademarks or branded device simulation.

## Validation-first principle
Do not expand content before the core loop is playable. Test the prototype with approximately 5–8 people. A promising early signal is that at least 3 testers independently want to play again; this is a signal to investigate further, not proof of commercial success.

## Budget and time assumptions
- Initial budget: €0.
- Available development time: approximately 10 hours per week.
- Initial validation target: about four weeks / 40 hours, adjusted if technical issues arise.
