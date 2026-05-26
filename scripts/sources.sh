#!/usr/bin/env bash

set -e

echo "Backing up old sources.list..."

sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup

echo "Setting Debian mirrors..."

sudo tee /etc/apt/sources.list >/dev/null <<'EOF'
# Main
# deb https://deb.debian.org/debian/ trixie main contrib non-free non-free-firmware
deb https://mirror.yandex.ru/debian/ trixie main contrib non-free non-free-firmware

# Updates
# deb https://deb.debian.org/debian/ trixie-updates main contrib non-free non-free-firmware
deb https://mirror.yandex.ru/debian/ trixie-updates main contrib non-free non-free-firmware

# Backports
# apt install -t trixie-backports <package>
# deb https://deb.debian.org/debian/ trixie-backports main contrib non-free non-free-firmware
deb https://mirror.yandex.ru/debian/ trixie-backports main contrib non-free non-free-firmware

# Security
# deb https://security.debian.org/debian-security/ trixie-security main contrib non-free non-free-firmware
deb https://mirror.yandex.ru/debian-security/ trixie-security main contrib non-free non-free-firmware
EOF

sudo apt update

echo "Upgrading system..."

sudo apt upgrade -y
