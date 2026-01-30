#!/bin/bash

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Use Node 20.18.2
nvm use 20.18.2

echo "🚀 Launching Kepler IDE..."
./scripts/code.sh
