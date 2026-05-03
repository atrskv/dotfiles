#!/usr/bin/env bash

set -euo pipefail

SOURCES="/etc/apt/sources.list"

echo "→ Writing $SOURCES …"

sudo tee "$SOURCES" > /dev/null <<'EOF'

# Main mirror
deb https://mirror.yandex.ru/debian/ trixie contrib main non-free non-free-firmware
# deb-src https://mirror.yandex.ru/debian/ trixie contrib main non-free non-free-firmware

# Updates
deb https://mirror.yandex.ru/debian/ trixie-updates contrib main non-free non-free-firmware
# deb-src https://mirror.yandex.ru/debian/ trixie-updates contrib main non-free non-free-firmware

# Proposed updates
deb https://mirror.yandex.ru/debian/ trixie-proposed-updates contrib main non-free non-free-firmware
# deb-src https://mirror.yandex.ru/debian/ trixie-proposed-updates contrib main non-free non-free-firmware

# Backports
deb https://mirror.yandex.ru/debian/ trixie-backports contrib main non-free non-free-firmware
# deb-src https://mirror.yandex.ru/debian/ trixie-backports contrib main non-free non-free-firmware

# Security
deb https://security.debian.org/debian-security/ trixie-security contrib main non-free non-free-firmware
# deb-src https://security.debian.org/debian-security/ trixie-security contrib main non-free non-free-firmware
EOF

echo "sources.list updated"
echo "Running apt update …"
sudo apt-get update
echo "Done"
