---
name: fiware-situational-publish
description: Publish InBiot telemetry plus generic situational assessment (generic-iaq-v1) to FIWARE Orion. Use when user wants interpretation in the smart context, not WELL certification in NGSI.
---

# FIWARE situational publish

Combines **measurements** and **interpretation** in one Orion upsert.

## Before publish

1. Read `schemas/generic-iaq-assessment-v1.json` and `knowledge/generic_iaq_thresholds.md`.
2. `get_latest_measurements` (or use measurements the user already validated in chat).
3. Build `assessment_json` conforming to the schema:
   - `profile`: `generic-iaq-v1`
   - `overallBand`, `summary`, `drivers`, `gaps`, `recommendedActions`, `partialData`, `basis`
4. For latest-only reads use `basis: "instant"` and state limits in `summary`.

## Publish

Call **`publish_situational_iaq`** with:

- `inbiot_device_id`
- `measurements_json`
- `assessment_json` (stringified JSON object)
- `timestamp` from the sensor when available

## After

`list_published_hq_entities` or summarize entity id, telemetry, and `situationSummary` / `situationBand` from the tool response.

Host agents (Anne) may add WELL/EPBD narrative in chat; NGSI payload stays on **generic-iaq-v1**.
