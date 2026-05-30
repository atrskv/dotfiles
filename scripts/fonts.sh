#!/bin/sh

set -e

echo "Installing fonts..."

FONTPATH="$HOME/.local/share/fonts"
mkdir -p "$FONTPATH"

cd /tmp || exit 1

FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"

echo "Downloading JetBrainsMono Nerd Font..."
wget -O JetBrainsMono.zip "$FONT_URL"

echo "Extracting fonts..."
unzip -o JetBrainsMono.zip -d "$FONTPATH"

rm -f JetBrainsMono.zip

echo "Updating font cache..."
fc-cache -fv

echo "Done!"
