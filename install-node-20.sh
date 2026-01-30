#!/bin/bash

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node 20.18.2
nvm install 20.18.2

# Use Node 20.18.2
nvm use 20.18.2

# Verify
node --version
npm --version

echo ""
echo "✅ Node 20.18.2 installed and activated!"
echo ""
echo "Now run:"
echo "  npm install"
echo "  npm run buildreact"
echo "  npm run compile-client"
echo "  ./scripts/code.sh"
