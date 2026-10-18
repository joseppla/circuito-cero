# Product Context

## Intended experience
The player should feel like a resourceful repair-business owner making uncertain decisions with limited cash. The fun comes from identifying profitable opportunities, weighing diagnostic costs, and deciding when not to repair a device.

## Design principles
- Decisions should matter financially.
- Information should be incomplete before purchase.
- Diagnosis should reduce uncertainty but cost time or money.
- Repairs should have risks and trade-offs.
- Profits and losses should be transparent and understandable.
- A small number of interesting choices is preferable to a large amount of shallow content.
- The interface must remain legible and usable on a phone.

## Example decision
A laptop costs €80. Diagnosis costs €5, replacement parts cost €15, and a successful resale earns €150.
Net result before any other expenses:
€150 - €80 - €5 - €15 = €50 profit.

The game should track every cost once and avoid double-counting.

## Visual direction
- 2D top-down workshop.
- Pixel-art style.
- The developer will create or draw the visual assets.
- Use temporary shapes, placeholders, and native Godot UI during early development.
- Keep artwork modular: floor, walls, workbench, computer, tools, shelves, and devices should be reusable where practical.
- Do not generate or download final art assets unless explicitly requested.

## Interface approach
Use Godot Control nodes for menus, market lists, inventory, money display, diagnosis results, and repair decisions. Use world sprites for the workshop and interactive devices where appropriate. Do not make every screen a single flattened image.

## Potential later monetization
Only after the core loop is validated, consider a free demo and a paid full version with an experimental price around €3.99–€4.99. This is a hypothesis to test, not a fixed business decision. Avoid ads and in-app purchases during MVP development.
