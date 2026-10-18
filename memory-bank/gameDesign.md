# Game Design — Circuito Cero

## Core loop
Market offer → purchase → workshop inventory → diagnosis → repair decision → repair or sell as-is/for parts → sale → profit/loss → reinvestment.

## Initial device categories
1. Laptop.
2. Game console.
3. Audio amplifier.

Use fictional names and generic device categories in the MVP.

## Initial fault set (six faults)
The initial fault list is provisional and can be adjusted during implementation:
- Laptop: faulty battery.
- Laptop: defective RAM.
- Console: power-supply issue.
- Console: overheating.
- Amplifier: failed capacitors.
- Amplifier: faulty audio channel.

Each fault should have symptoms, compatible diagnostic tests, possible parts/costs, and a repair outcome.

## Initial diagnostic tools
Provisional tools:
- Multimeter.
- Bench power supply.
- Electronic diagnostic tool.

Each tool should have a clear use, a test cost if applicable, and a defined information outcome. Do not implement real-world electrical hazards or detailed engineering simulation unless the design later requires it.

## Economy principles
- The player starts with €500 in the first prototype.
- The first offer is a laptop priced at €120.
- All purchase, diagnostic, parts, and other costs must be tracked.
- Sale revenue minus all recorded costs equals net profit/loss.
- No cost may be counted twice.
- Reject purchases and repairs the player cannot afford.
- Balance values are placeholders for testing, not final economy tuning.

## MVP play session
Aim for a short 10–15 minute session in which the player can make multiple meaningful purchase/repair/resale decisions.

## Future features (not MVP commitments)
Possible later features include reputation, workshop upgrades, better tools, more device types, market variation, and more advanced repair cases. Add only after testing the core loop.
