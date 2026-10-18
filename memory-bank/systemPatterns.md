# System Patterns and Architecture

## General architecture
Keep game rules separate from presentation. Prefer small, focused scripts over a single large manager. Avoid premature complexity.

Possible logical responsibilities (names are suggestions, not mandatory filenames):
- `GameState`: current run state and cash balance.
- `DeviceDefinition`: static data describing a device type, base values, possible faults, and repair information.
- `DeviceInstance`: one acquired device with its actual hidden fault, known symptoms, condition, purchase price, and repair state.
- `EconomySystem`: validates purchases, costs, sales, and profit/loss.
- `DiagnosisSystem`: maps diagnostic tools and tests to information revealed.
- `RepairSystem`: validates parts, costs, and repair outcomes.
- `SaveSystem`: serializes and validates persistent player state.

Use resources, dictionaries, or JSON data as appropriate for the current project size. Choose the simplest maintainable option and document the decision.

## Important data distinction
Separate:
1. Static definitions (e.g. laptop model, base resale value, possible faults).
2. Individual device instances (e.g. the laptop bought for €80 with a hidden power fault and current repair state).

Do not expose the hidden fault in the UI before the player discovers it through gameplay.

## Economy rules
- All transactions should go through centralized game logic.
- The UI can display whether an action seems available, but the underlying function must validate it again.
- Reject purchases if cash is insufficient or the offer is no longer available.
- Prevent duplicate purchase of a unique offer.
- Track purchase price, diagnostic costs, parts costs, other expenses, and sale revenue.
- Calculate net profit/loss consistently from recorded transactions.
- Do not allow negative cash unless debt is deliberately added in a later design.

## Diagnosis and repair
- Diagnostic tools should reveal clues or fault information, not arbitrarily change unrelated state.
- Each test should have a defined cost and a clear result.
- A device may have a hidden fault, discovered facts, and a repair state.
- Repair attempts must validate parts and funds before charging the player.
- Model repair success/failure transparently and test edge cases.

## Saving
- Save only the data needed to resume a run.
- Validate loaded values and handle missing/corrupt save data safely.
- Consider a save schema/version field before the save system becomes substantial.
- Never claim save/load is tested until a real save-and-reload check has been performed.

## Testing strategy
Prioritize small tests for:
- Purchase succeeds with sufficient funds.
- Purchase fails with insufficient funds.
- A unique offer cannot be purchased twice.
- Cash and inventory update consistently.
- Diagnostic costs are recorded exactly once.
- Repair cannot proceed without required funds/parts.
- Sale revenue and net profit/loss are correct.
- Save/load restores cash, inventory, and device state.
