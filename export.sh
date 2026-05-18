#!/usr/bin/env bash
set -euo pipefail

DRAWIO="/Applications/draw.io.app/Contents/MacOS/draw.io"
SRC="logo/q.drawio"

# Page 1 = "Logo - light" (dark mark, light bg) → q-dark.svg / q-dark.png
# Page 2 = "Logo - dark" (light mark, dark bg) → q-light.svg / q-light.png

echo "Exporting SVGs..."
"$DRAWIO" --export --format svg --crop --transparent --page-index 2 --output logo/q-dark.svg "$SRC"
"$DRAWIO" --export --format svg --crop --transparent --page-index 1 --output logo/q-light.svg "$SRC"

echo "Fixing SVG colors..."
# Strip draw.io adaptive-theme style overrides; fill attributes are already correct
sed -i '' 's/ style="fill: [^"]*"//g' logo/q-dark.svg
sed -i '' 's/ style="fill: [^"]*"//g' logo/q-light.svg

echo "Exporting PNGs..."
"$DRAWIO" --export --format png --crop --transparent --page-index 2 --output logo/q-dark.png "$SRC"
"$DRAWIO" --export --format png --crop --transparent --page-index 1 --output logo/q-light.png "$SRC"

echo "Generating favicons..."
# Crop to square (center, trim left/right) before resizing to avoid distortion
magick logo/q-dark.png -gravity Center -crop 240x240+0+0 +repage -resize 32x32 favicon/favicon-32.png
magick logo/q-dark.png -gravity Center -crop 240x240+0+0 +repage -resize 16x16 favicon/favicon-16.png
magick favicon/favicon-16.png favicon/favicon-32.png favicon/favicon.ico

echo "Done."
