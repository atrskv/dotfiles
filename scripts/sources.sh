#!/usr/bin/env bash
set -euo pipefail

BACKUP="/etc/apt/sources.list.backup"
SOURCE_FILE="/etc/apt/sources.list"

echo "Backing up sources.list if backup does not exist..."

if [ ! -f "$BACKUP" ]; then
  sudo cp "$SOURCE_FILE" "$BACKUP"
  echo "Backup created: $BACKUP"
else
  echo "Backup already exists: $BACKUP"
fi

NEW_SOURCES="$(
  cat <<'EOF'
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
)"

echo "Checking whether sources.list needs updating..."

if ! sudo cmp -s <(printf "%s\n" "$NEW_SOURCES") "$SOURCE_FILE"; then
  echo "Updating $SOURCE_FILE..."
  printf "%s\n" "$NEW_SOURCES" | sudo tee "$SOURCE_FILE" >/dev/null
else
  echo "$SOURCE_FILE is already up to date."
fi

echo "Updating apt package index..."
sudo apt update

echo "Done!"
