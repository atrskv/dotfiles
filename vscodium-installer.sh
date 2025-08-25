#!/bin/bash

OS_TYPE="$(uname)"

[ -f vscodium/extensions.txt ] && xargs -L 1 codium --install-extension < vscodium/extensions.txt || exit 1

if [ "$OS_TYPE" = "Darwin" ]; then
  mkdir -p ~/Library/Application\ Support/VSCodium/User/
  cp -r vscodium/* ~/Library/Application\ Support/VSCodium/User/
elif [ "$OS_TYPE" = "Linux" ]; then
  mkdir -p ~/.config/VSCodium/User/
  cp vscodium/* ~/.config/VSCodium/User/
else
  exit 1
fi
