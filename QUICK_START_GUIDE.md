# 🚀 Kepler IDE - Quick Start Guide

## ⚠️ IMPORTANT: API Keys Security

**You shared your API keys publicly!** Please immediately:

1. **Revoke these keys NOW:**
   - Anthropic: https://console.anthropic.com/settings/keys
   - OpenAI: https://platform.openai.com/api-keys
   - DeepSeek: https://platform.deepseek.com/api_keys
   - Gemini: https://aistudio.google.com/apikey
   - Groq: https://console.groq.com/keys
   - xAI: https://console.x.ai
   - Mistral: https://console.mistral.ai/api-keys
   - OpenRouter: https://openrouter.ai/settings/keys

2. **Generate new keys** after revoking
3. **Never share API keys** in plain text or public conversations

## 🔧 Build Requirements

### Node Version Issue
Your current Node version (v24.7.0) is **too new** and causes C++20 compilation errors.

**You MUST use Node v20.18.2** for this project.

### Solution: Use NVM

```bash
# Install nvm if you don't have it
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Restart your terminal, then:
nvm install 20.18.2
nvm use 20.18.2

# Verify
node --version  # Should show v20.18.2
```

## 📦 Build Steps

Once you're on Node v20.18.2:

```bash
# 1. Clean install
rm -rf node_modules package-lock.json
npm install

# 2. Build React components
npm run buildreact

# 3. Compile the project
npm run compile-client

# 4. Start watch mode (optional, for development)
npm run watch

# 5. Launch Kepler (in another terminal)
./scripts/code.sh
```

## 🎨 Applying the Green Cyberpunk Theme

Once Kepler is running:

1. Press `Cmd+Shift+P` (or `Ctrl+Shift+P` on Windows/Linux)
2. Type "Color Theme"
3. Select "Kepler Cyberpunk"

## 🔑 Adding Your API Keys (After Regenerating!)

Once Kepler is running:

1. Open Kepler's Settings (look for the settings icon or press `Cmd+Shift+P` → "Kepler: Open Settings")
2. Select your AI provider (Anthropic, OpenAI, etc.)
3. Enter your **NEW** API key (after you've revoked the old ones!)
4. Select a model
5. Start chatting!

## ❌ Common Issues

### "Cannot find module" errors
```bash
# Clean and reinstall
rm -rf node_modules build/node_modules
npm install
```

### "C++20 or later required" error
**You're using Node v24.x** - switch to v20.18.2 using nvm (see above)

### Build fails with gyp errors
Make sure you have:
- **macOS**: Xcode Command Line Tools (`xcode-select --install`)
- **Windows**: Visual Studio 2022 Build Tools
- **Linux**: build-essential, g++, libx11-dev

## 📚 More Info

- Full rebranding details: `KEPLER_REBRANDING_COMPLETE.md`
- Contributing guide: `HOW_TO_CONTRIBUTE.md`
- Repository: https://github.com/sarim-developers/kepleride

---

**Remember:** Always keep your API keys secure and never share them publicly!
