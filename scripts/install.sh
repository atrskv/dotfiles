#!/bin/bash

set -e

DOTFILES="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPTS="$DOTFILES/scripts"

echo "Starting..."

echo "Sources..."
bash "$SCRIPTS/sources.sh"

echo "Packages..."
bash "$SCRIPTS/packages.sh"

echo "Fonts and icons..."
bash "$SCRIPTS/fonts-and-icons.sh"

echo "Chrome..."
bash "$SCRIPTS/chrome.sh"

echo "Ghostty..."
bash "$SCRIPTS/ghostty.sh"

echo "Zsh..."
bash "$SCRIPTS/zsh.sh"

echo "Tmux..."
bash "$SCRIPTS/tmux.sh"

echo "Neovim..."
bash "$SCRIPTS/nvim.sh"

echo "Flatpak..."
bash "$SCRIPTS/flatpak.sh"

echo "Symlinks..."
bash "$SCRIPTS/setup-symlinks.sh"

echo "Done"
echo "Run: source ~/.zshrc"
echo "Run: tmux source ~/.config/tmux/tmux.conf"
