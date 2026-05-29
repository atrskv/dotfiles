#!/bin/bash

set -e

echo "Downloading Neovim..."
wget -q --show-progress https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

echo "Extracting..."
tar -xf nvim-linux-x86_64.tar.gz

echo "Moving to ~/nvim..."
mv nvim-linux-x86_64 ~/nvim

echo "Creating symlink in /usr/local/bin (requires sudo)..."
sudo ln -sf ~/nvim/bin/nvim /usr/local/bin/nvim

echo "Installing LazyVim..."
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo "Done"
