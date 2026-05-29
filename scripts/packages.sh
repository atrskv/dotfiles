#!/bin/bash
set -e

sudo apt update

sudo add-apt-repository universe -y

sudo add-apt-repository ppa:lazygit-team/release -y
sudo apt update

sudo apt install -y \
  xdg-desktop-portal-gtk \
  xdg-desktop-portal \
  xdg-desktop-portal-wlr \
  grim \
  slurp \
  ripgrep \
  wl-clipboard \
  wlogout \
  network-manager \
  brightnessctl \
  pulseaudio-utils \
  lazygit \
  cava \
  flatpak \
  pipx

pipx ensurepath
export PATH="$HOME/.local/bin:$PATH"

pipx install rain

flatpak install -y flathub be.alexandervanhee.gradia
flatpak install -y flathub org.telegram.desktop
flatpak install -y flathub md.obsidian.Obsidian

echo "All packages installed successfully"
