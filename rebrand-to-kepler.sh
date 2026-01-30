#!/bin/bash

# Kepler Rebranding Script
# This script replaces all user-facing "Kepler" references with "Kepler"

echo "🚀 Starting Kepler rebranding..."

# Update product.json version fields
sed -i '' 's/"KeplerVersion"/"keplerVersion"/g' product.json
sed -i '' 's/"KeplerRelease"/"keplerRelease"/g' product.json

# Update package-lock.json
sed -i '' 's/"name": "Kepler-editor"/"name": "kepler-editor"/g' package-lock.json

# Update user-facing strings in TypeScript files
find src/vs/workbench/contrib/Kepler -type f -name "*.ts" -o -name "*.tsx" | while read file; do
    # Replace copyright headers
    sed -i '' 's/Copyright 2025 Vexelity Ai, Inc\./Copyright 2025 sarim-developer/g' "$file"

    # Replace user-facing "Kepler" strings
    sed -i '' "s/'Kepler:/'Kepler:/g" "$file"
    sed -i '' 's/"Kepler:/"Kepler:/g' "$file"
    sed -i '' "s/'Kepler /'Kepler /g" "$file"
    sed -i '' 's/"Kepler /"Kepler /g' "$file"
    sed -i '' "s/Kepler Editor/Kepler Editor/g" "$file"
    sed -i '' "s/Kepler Agent/Kepler Agent/g" "$file"
    sed -i '' "s/Kepler Side Bar/Kepler Side Bar/g" "$file"
    sed -i '' "s/Kepler's Settings/Kepler's Settings/g" "$file"
    sed -i '' "s/Kepler Plan Editor/Kepler Plan Editor/g" "$file"
    sed -i '' "s/'Kepler-tooltip/'kepler-tooltip/g" "$file"
    sed -i '' 's/"Kepler-tooltip/"kepler-tooltip/g' "$file"
    sed -i '' "s/Kepler-tooltip-/kepler-tooltip-/g" "$file"
done

# Update localize strings
find src/vs/workbench/contrib/Kepler -type f -name "*.ts" -o -name "*.tsx" | while read file; do
    sed -i '' "s/localize2('void/localize2('kepler/g" "$file"
    sed -i '' "s/localize('void/localize('kepler/g" "$file"
    sed -i '' "s/nls.localize2('void/nls.localize2('kepler/g" "$file"
    sed -i '' "s/nls.localize('void/nls.localize('kepler/g" "$file"
done

# Update Application Support paths
find src/vs/workbench/contrib/Kepler -type f -name "*.ts" | while read file; do
    sed -i '' "s/Application Support', 'Kepler/Application Support', 'Kepler/g" "$file"
    sed -i '' "s/.config', 'Kepler/.config', 'Kepler/g" "$file"
done

# Update other workbench files
sed -i '' "s/Kepler Side Bar/Kepler Side Bar/g" src/vs/workbench/contrib/quickaccess/browser/viewQuickAccess.ts
sed -i '' "s/Kepler Side Bar/Kepler Side Bar/g" src/vs/workbench/browser/parts/paneCompositeBar.ts
sed -i '' "s/Kepler Editor/Kepler Editor/g" src/vs/workbench/browser/parts/editor/editorGroupWatermark.ts

# Update telemetry message
sed -i '' "s/Kepler separately records/Kepler separately records/g" src/vs/platform/telemetry/common/telemetryService.ts
sed -i '' "s/Kepler metrics/Kepler metrics/g" src/vs/platform/telemetry/common/telemetryService.ts
sed -i '' "s/Kepler's Settings/Kepler's Settings/g" src/vs/platform/telemetry/common/telemetryService.ts

# Update about dialog
sed -i '' "s/Kepler Version/Kepler Version/g" src/vs/workbench/electron-sandbox/parts/dialogs/dialogHandler.ts

# Update metrics console logs
find src/vs/workbench/contrib/Kepler -type f -name "*.ts" | while read file; do
    sed -i '' "s/Kepler posthog/Kepler posthog/g" "$file"
    sed -i '' "s/Kepler metrics/Kepler metrics/g" "$file"
done

# Update React component files
find src/vs/workbench/contrib/Kepler/browser/react -type f -name "*.tsx" -o -name "*.ts" | while read file; do
    sed -i '' 's/Copyright 2025 Vexelity Ai, Inc\./Copyright 2025 sarim-developer/g' "$file"
done

# Update CSS files
find src/vs/workbench/contrib/Kepler -type f -name "*.css" | while read file; do
    sed -i '' 's/Copyright 2025 Vexelity Ai, Inc\./Copyright 2025 sarim-developer/g' "$file"
done

# Update common files
find src/vs/workbench/contrib/Kepler/common -type f -name "*.ts" | while read file; do
    sed -i '' 's/Copyright 2025 Vexelity Ai, Inc\./Copyright 2025 sarim-developer/g' "$file"
done

# Update electron-main files
find src/vs/workbench/contrib/Kepler/electron-main -type f -name "*.ts" | while read file; do
    sed -i '' 's/Copyright 2025 Vexelity Ai, Inc\./Copyright 2025 sarim-developer/g' "$file"
done

echo "✅ Rebranding complete!"
echo ""
echo "📝 Summary:"
echo "  - Updated all 'Kepler' to 'Kepler' in user-facing strings"
echo "  - Updated copyright headers to 'sarim-developer'"
echo "  - Updated Application Support paths"
echo "  - Updated localization keys"
echo ""
echo "🔍 You may want to manually check:"
echo "  - Icon files in kepler_icons/"
echo "  - Any hardcoded URLs or references"
echo "  - Build configuration files"
