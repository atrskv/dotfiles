#!/usr/bin/env bash

set -euo pipefail

SOURCES="/etc/apt/sources.list"

echo "Writing $SOURCES"

sudo tee "$SOURCES" >/dev/null <<'EOF'

# Main
# deb https://deb.debian.org/debian/ trixie main contrib non-free non-free-firmware
deb https://mirror.yandex.ru/debian/ trixie main contrib non-free non-free-firmware

# Updates
# deb https://deb.debian.org/debian/ trixie-updates main contrib non-free non-free-firmware
deb https://mirror.yandex.ru/debian/ trixie-updates main contrib non-free non-free-firmware

# Backports (apt install -t trixie-backports <>)
# deb https://deb.debian.org/debian/ trixie-backports main contrib non-free non-free-firmware
deb https://mirror.yandex.ru/debian/ trixie-backports main contrib non-free non-free-firmware

# Security
# deb https://security.debian.org/debian-security/ trixie-security main contrib non-free non-free-firmware
deb https://mirror.yandex.ru/debian-security/ trixie-security main contrib non-free non-free-firmware
EOF

echo "sources.list updated"
echo "Running apt update"

sudo apt-get update

echo "Done"
