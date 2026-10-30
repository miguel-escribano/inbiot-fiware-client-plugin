# FIWARE client plugin

- **MCP:** `inbiot-orion-bridge-mcp` only for Orion writes/reads. No generic FIWARE admin MCP.
- **Data:** InBiot sensors via `inbiot-data-api-mcp` when publishing from devices.
- **Assessment:** Generic profile `generic-iaq-v1` — not WELL-centric. Schema in `schemas/generic-iaq-assessment-v1.json`.
- **Persona:** `agents/fiware-integrator.md` for standalone IDE integrator mode. Anne on Hermes does not load that file.
