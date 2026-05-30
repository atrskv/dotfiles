#!/usr/bin/env bash
set -e

echo "Installing Neovim..."

cd /tmp

if [ -f nvim-linux-x86_64.tar.gz ]; then
  echo "Removing old Neovim archive..."
  rm nvim-linux-x86_64.tar.gz
fi

if [ -d nvim-linux-x86_64 ]; then
  echo "Removing old extracted Neovim directory..."
  rm -rf nvim-linux-x86_64
fi

echo "Downloading Neovim..."
wget -q --show-progress \
  https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

echo "Extracting..."
tar -xf nvim-linux-x86_64.tar.gz

echo "Moving to ~/nvim..."
rm -rf "$HOME/nvim"
mv nvim-linux-x86_64 "$HOME/nvim"

echo "Creating symlink in /usr/local/bin..."
sudo ln -sf "$HOME/nvim/bin/nvim" /usr/local/bin/nvim

rm -f nvim-linux-x86_64.tar.gz

echo "Done"
nvim --version | head -n 1
