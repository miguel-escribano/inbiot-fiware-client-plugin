#!/usr/bin/env bash
# Install or refresh the portable Hermes plugin from a checkout (Anne Linode).
set -euo pipefail
PLUGIN_ROOT="${1:-/root/anne/inbiot-fiware-client-plugin}"
HERMES="${HERMES_BIN:-/root/.local/bin/hermes}"
export PATH="/root/.local/bin:$PATH"

[ -f "$PLUGIN_ROOT/plugin.json" ] || { echo "missing plugin.json in $PLUGIN_ROOT" >&2; exit 1; }

"$HERMES" plugins install "$PLUGIN_ROOT" --force --enable --yes-deps
echo "✓ Hermes plugin inbiot-fiware installed and enabled"
