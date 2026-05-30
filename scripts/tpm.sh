#!/usr/bin/env bash
set -euo pipefail

echo "Setting up TPM..."

TPM_DIR="$HOME/.config/tmux/plugins/tpm"

mkdir -p "$(dirname "$TPM_DIR")"

if [ ! -d "$TPM_DIR" ]; then
  echo "Installing TPM..."
  git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
else
  echo "TPM already installed"
fi

echo "TPM setup done"
echo "Start tmux and press prefix + I to install tmux plugins"
