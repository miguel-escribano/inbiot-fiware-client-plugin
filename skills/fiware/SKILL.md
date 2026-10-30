---
name: fiware
description: >-
  Route FIWARE Orion publish and query requests. Triggers: FIWARE, Orion, NGSI,
  publish to context broker, list HQ entities, situational assessment in Orion.
user-invocable: false
---

# FIWARE — Router

Read `../../agents/fiware-integrator.md` for guardrails.

| User intent | Skill |
|-------------|-------|
| Publish readings only | [`fiware-publish`](../fiware-publish/SKILL.md) |
| Publish readings + situational interpretation | [`fiware-situational-publish`](../fiware-situational-publish/SKILL.md) |
| List entities / verify publish | [`fiware-list`](../fiware-list/SKILL.md) |
| Orion health / version | Call `orion_version` (bridge MCP) |

If bridge MCP tools are missing: copy `.mcp.json.example` → `.mcp.json` and restart the session.
