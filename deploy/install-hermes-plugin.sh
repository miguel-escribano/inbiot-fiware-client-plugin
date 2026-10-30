#!/usr/bin/env bash
# Install or refresh the portable Hermes plugin from a checkout (Anne Linode).
set -euo pipefail
HERMES="${HERMES_BIN:-/root/.local/bin/hermes}"
REPO="${FIWARE_PLUGIN_REPO:-miguel-escribano/inbiot-fiware-client-plugin}"
export PATH="/root/.local/bin:$PATH"

# Install from GitHub shorthand (matches anne-app-deployer checkout; avoids local-path parsing bugs).
"$HERMES" plugins install "$REPO" --force --enable --yes-deps
echo "✓ Hermes plugin inbiot-fiware installed and enabled from $REPO"
