#!/bin/bash
sudo apt install -y tmux wl-clipboard

mkdir -p ~/.config/tmux/plugins

if [ ! -d ~/.config/tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi

echo "Done. Start tmux and press prefix + I to install plugins"
