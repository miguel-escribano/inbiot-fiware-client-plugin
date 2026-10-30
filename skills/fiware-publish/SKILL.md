---
name: fiware-publish
description: Publish InBiot IAQ telemetry to FIWARE Orion for mapped HQ devices. Use after get_latest_measurements or when user asks to sync readings only.
---

# FIWARE publish (telemetry)

Use **inbiot-orion-bridge-mcp** and **inbiot-data-api-mcp** when reading InBiot devices.

## Workflow

1. `list_hq_device_map` if room id is unclear.
2. `get_latest_measurements` for the mapped `inbiot_device_id`.
3. `publish_indoor_iaq` with:
   - `inbiot_device_id`
   - `measurements_json`: array of `{parameter, value}` from step 2
   - `timestamp`: sensor timestamp when available
4. Confirm with `list_published_hq_entities` or echo `entity_id`, `action`, `co2`, `dateObserved` from the publish response.

## Scope

- InBiot HQ mapped devices only (v0.1). Not general FIWARE provisioning.
- User must ask to publish; no silent push every turn.

## Errors

If Orion is down (`orion_version` or publish error), say the Context Broker is unreachable and stop.
