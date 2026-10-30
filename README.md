# inbiot-fiware-client-plugin

Client plugin for **InBiot → FIWARE Orion (NGSI-v2)**. Skills, assessment contract, and IDE wiring. Pairs with [inbiot-orion-bridge-mcp](https://github.com/miguel-escribano/inbiot-orion-bridge-mcp) (MCP server) and optionally [inbiot-data-api-mcp](https://github.com/miguel-escribano/inbiot-data-api-mcp) for sensor reads.

Anne (or any Hermes agent) mounts this plugin's `skills/` like **openair-3-mcp-client-plugin-oss**; persona stays the host agent unless you use **fiware-integrator** in the IDE.

## Binomio

| Repo | Role |
|------|------|
| [inbiot-orion-bridge-mcp](https://github.com/miguel-escribano/inbiot-orion-bridge-mcp) | **Server** — Orion HTTP, HQ device map, publish tools |
| **inbiot-fiware-client-plugin** (this repo) | **Client** — skills, generic IAQ assessment schema, MCP config |

## Quick start

1. Run or reach **inbiot-orion-bridge-mcp** (local `:3008/mcp` or `https://mcp.miguel-escribano.com/inbiot-orion-bridge-mcp/mcp`).
2. Copy [`.mcp.json.example`](.mcp.json.example) → `.mcp.json` (gitignored). Add token header if your host requires it.
3. Install this folder as a Cursor / Claude / Codex plugin (see [CONNECTORS.md](CONNECTORS.md)).
4. For InBiot HQ publish flows, also wire **inbiot-data-api-mcp** (Anne plugin ships it; merge [`.mcp.json.with-data-api.example`](.mcp.json.with-data-api.example) if needed).

## Skills

| Skill | Use when |
|-------|----------|
| `fiware` | Router — publish, list, health |
| `fiware-publish` | Telemetry only → Orion |
| `fiware-situational-publish` | Telemetry + generic situational assessment → Orion |
| `fiware-list` | Query published HQ entities |

Read [`schemas/generic-iaq-assessment-v1.json`](schemas/generic-iaq-assessment-v1.json) before building assessments.

## Hermes (Anne web)

Hosted Anne loads skills from `/root/anne/inbiot-fiware-client-plugin/skills` via `inbiot-anne-hermes/config.yaml`. Push this repo `main` → **anne-app-deployer** (same as openair client plugin).

## License

MIT
