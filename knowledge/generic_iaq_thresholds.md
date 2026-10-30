# Generic IAQ bands (profile generic-iaq-v1)

Office-oriented indicative bands for **situational** labels only — not a standard, not certification.

| Parameter | good | moderate | poor | Notes |
|-----------|------|----------|------|-------|
| CO₂ (ppm) | ≤ 800 | 801–1200 | > 1200 | Ventilation proxy |
| PM2.5 (µg/m³) | ≤ 12 | 13–35 | > 35 | Rough outdoor-style tiers |
| Relative humidity (%) | 30–60 | 25–29 or 61–70 | < 25 or > 70 | Comfort + mold risk hint |
| Temperature (°C) | 20–26 | 18–19.9 or 26.1–28 | < 18 or > 28 | Occupant comfort (generic) |

**Overall band:** worst single driver among **observed** parameters; if a key parameter is missing, cap at `moderate` and set `partialData: true`.

**Formaldehyde / VOCs:** if present, mention in drivers using the same good/moderate/poor spirit as product docs; if absent, list under `gaps`.
