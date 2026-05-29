#!/bin/sh

set -e

cd /tmp || exit 1

echo "Downloading Google Chrome..."
wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "Installing package..."
sudo apt install -y ./google-chrome.deb

echo "Cleaning up..."
rm -f google-chrome.deb

echo "Done"
