#!/bin/bash

cat vscodium/extensions.txt | xargs -L 1 codium --install-extension

cp -r vscodium/* ~/Library/Application\ Support/VSCodium/User/
