#!/usr/bin/env bash

set -e

echo "Installing dependencies..."

sudo apt update
sudo apt install -y zsh git curl

echo "Installing Oh My Zsh..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing plugins..."

ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting

chsh -s "$(which zsh)"

echo "Done. Please log out and log in again"
