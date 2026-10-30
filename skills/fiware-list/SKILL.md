---
name: fiware-list
description: List InBiot HQ IndoorAirQuality entities published in the configured FIWARE tenant (Orion NGSI-v2).
---

# FIWARE list (HQ tenant)

1. Optional: `orion_version` if the user doubts connectivity.
2. `list_published_hq_entities` with `limit` (default 10; HQ has 5 rooms).
3. Present a table: entity id, CO₂, dateObserved (UTC). Note stale rows if `dateObserved` is old vs other rooms.

Do not use generic FIWARE admin MCPs for this tenant.
