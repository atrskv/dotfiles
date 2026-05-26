#!/usr/bin/env bash

set -e

sudo apt install -y curl gpg lsb-release

curl -fsSL https://debian.griffo.io/archive.key |
  sudo gpg --dearmor -o /usr/share/keyrings/debian-griffo-io.gpg

echo "deb [signed-by=/usr/share/keyrings/debian-griffo-io.gpg] \
https://debian.griffo.io/debian/ \
$(lsb_release -cs) main" |
  sudo tee /etc/apt/sources.list.d/debian-griffo-io.list

sudo apt update
sudo apt install -y ghostty
