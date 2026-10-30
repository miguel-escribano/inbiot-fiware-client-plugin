# Connectors

## MCP servers

| Server | This plugin | Anne plugin |
|--------|-------------|-------------|
| inbiot-orion-bridge-mcp | `.mcp.json.example` | — (Hermes `config.yaml`) |
| inbiot-data-api-mcp | optional `.mcp.json.with-data-api.example` | `.mcp.json` |

## Install with Anne

1. Anne plugin (data-api + persona).
2. This plugin (FIWARE skills + orion bridge MCP).
3. Optional: [openair-3-mcp-client-plugin-oss](../openair-3-mcp-client-plugin-oss/) for charts.

Merge all servers in one `.mcp.json` or use per-plugin files per IDE support.

## Remote Linode

```json
"inbiot-orion-bridge-mcp": {
  "command": "npx",
  "args": [
    "-y",
    "mcp-remote",
    "https://mcp.miguel-escribano.com/inbiot-orion-bridge-mcp/mcp",
    "--header",
    "X-MCP-Token: YOUR_MCP_TOKEN"
  ]
}
```

Never commit tokens. Use placeholders in examples only.
