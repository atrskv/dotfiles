#!/bin/sh

set -e

echo "Installing Flatpak..."

sudo apt update
sudo apt install -y flatpak

echo "Adding Flathub repository..."
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "Done"
