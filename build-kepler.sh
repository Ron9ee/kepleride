#!/bin/bash

echo "🚀 Building Kepler IDE..."
echo ""

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Use Node 20.18.2
nvm use 20.18.2

echo ""
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ npm install failed"
    exit 1
fi

echo ""
echo "⚛️  Building React components..."
npm run buildreact

if [ $? -ne 0 ]; then
    echo "❌ React build failed"
    exit 1
fi

echo ""
echo "🔨 Compiling client..."
npm run compile-client

if [ $? -ne 0 ]; then
    echo "❌ Compilation failed"
    exit 1
fi

echo ""
echo "✅ Build complete!"
echo ""
echo "🎉 To launch Kepler, run:"
echo "   ./launch-kepler.sh"
