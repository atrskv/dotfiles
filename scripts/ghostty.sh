#!/usr/bin/env bash
set -e

echo "Installing Ghostty..."

sudo curl -fsSL https://debian.griffo.io/EA0F721D231FDD3A0A17B9AC7808B4DD62C41256.asc |
  sudo gpg --dearmor --yes -o /usr/share/keyrings/debian.griffo.io.gpg

echo "deb [signed-by=/usr/share/keyrings/debian.griffo.io.gpg] https://debian.griffo.io/apt $(lsb_release -sc) main" |
  sudo tee /etc/apt/sources.list.d/debian.griffo.io.list

sudo apt update
sudo apt install -y ghostty

echo "Ghostty installed"
