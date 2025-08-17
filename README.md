# dotfiles

This repository contains my personal development environment configuration focused on simplicity, speed and clean UI

## VSCodium

![Screenshot](https://raw.githubusercontent.com/atrskv/dotfiles/main/resources/vscodium-screen.png)

1. Clone the dotfiles repository:

```
git clone https://github.com/atrskv/dotfiles.git
cd dotfiles
```

2. Make the VSCodium installer script executable:

```
chmod +x vscodium-installer.sh
```

3. Run the installer:

```
./vscodium-installer.sh
```

This script will copy the settings, install extensions and configure VSCodium according to my preferences


### Alabaster Theme

I really liked the original Alabaster theme, especially the version [the author](https://tonsky.me/) created for PyCharm. To bring that same look and feel to VSCodium, I made a custom variation of the theme that's visually closer to the JetBrains version

You can find it here:
👉 [atrskv/vscode-theme-alabaster](https://github.com/atrskv/vscode-theme-alabaster) *(or under the “Variations” section of [the original Alabaster repository](https://github.com/tonsky/vscode-theme-alabaster))*

Make sure [the original Alabaster theme](https://marketplace.visualstudio.com/items?itemName=tonsky.theme-alabaster) is already installed in VSCodium. Then, to apply my custom color scheme:

1. Clone the theme repository:

```
git clone https://github.com/atrskv/vscode-theme-alabaster.git
```

2. Replace the original `alabaster-color-theme.json` with the custom one:

```
mv vscode-theme-alabaster/theme/alabaster-color-theme.json ~/.vscode-oss/extensions/tonsky.theme-alabaster-0.2.9-universal/theme/alabaster-color-theme.json 
```

3. Reload the window in VSCodium:

- Open the Command Palette *(ctrl+shift+p or cmd+shift+p)*
- Run `Developer: Reload Window`
