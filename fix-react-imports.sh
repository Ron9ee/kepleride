#!/bin/bash

# Fix capitalized Kepler references in React files

echo "Fixing React import paths..."

# Fix Kepler-settings-tsx to orbit-settings-tsx
find src/vs/workbench/contrib/orbit/browser/react -type f -name "*.tsx" -o -name "*.ts" | while read file; do
    sed -i '' 's/Kepler-settings-tsx/orbit-settings-tsx/g' "$file"
done

# Fix KeplerSettingsTypes to orbitSettingsTypes
find src/vs/workbench/contrib/orbit/browser/react -type f -name "*.tsx" -o -name "*.ts" | while read file; do
    sed -i '' 's/KeplerSettingsTypes/orbitSettingsTypes/g' "$file"
done

# Fix KeplerSettingsPane to orbitSettingsPane
find src/vs/workbench/contrib/orbit/browser/react -type f -name "*.tsx" -o -name "*.ts" | while read file; do
    sed -i '' 's/KeplerSettingsPane/orbitSettingsPane/g' "$file"
done

# Fix KeplerSettingsService to orbitSettingsService
find src/vs/workbench/contrib/orbit/browser/react -type f -name "*.tsx" -o -name "*.ts" | while read file; do
    sed -i '' 's/KeplerSettingsService/orbitSettingsService/g' "$file"
done

# Fix KeplerSelectionHelperWidget to orbitSelectionHelperWidget
find src/vs/workbench/contrib/orbit/browser/react -type f -name "*.tsx" -o -name "*.ts" | while read file; do
    sed -i '' 's/KeplerSelectionHelperWidget/orbitSelectionHelperWidget/g' "$file"
done

echo "Done! React import paths fixed."
