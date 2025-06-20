#!/usr/bin/env bash

set -euo pipefail

NODE_ID=${1:-6327199}

echo "Starting nexus-network with node-id: ${NODE_ID}"
exec /usr/local/bin/nexus-network start --node-id "${NODE_ID}"
