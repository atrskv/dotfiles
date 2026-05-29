#!/bin/bash
DOTFILES="$HOME/projects/main/dotfiles"

mkdir -p ~/.config/ghostty
ln -sf "$DOTFILES/ghostty/.config/config.ghostty" ~/.config/ghostty/config.ghostty

mkdir -p ~/projects/main/knowledge-vault
ln -sf "$DOTFILES/obsidian/.obsidian.vimrc" ~/projects/main/knowledge-vault/.obsidian.vimrc

mkdir -p ~/.oh-my-zsh/custom/themes
ln -sf "$DOTFILES/zsh/themes/my-theme.zsh-theme" ~/.oh-my-zsh/custom/themes/my-theme.zsh-theme

mv -f ~/.zshrc ~/.zshrc.bak
ln -sf "$DOTFILES/zsh/.zshrc" ~/.zshrc

mkdir -p ~/.config/tmux
ln -sf "$DOTFILES/tmux/.config/tmux.conf" ~/.config/tmux/tmux.conf

sudo ln -sf "$DOTFILES/ufetch/ufetch" /usr/local/bin/ufetch
sudo chmod +x /usr/local/bin/ufetch

mkdir -p ~/.config/sway
ln -sf "$DOTFILES/sway/config" ~/.config/sway/config

mkdir -p ~/.config/waybar/scripts
ln -sf "$DOTFILES/waybar/style.css" ~/.config/waybar/style.css
ln -sf "$DOTFILES/waybar/config.jsonc" ~/.config/waybar/config.jsonc
ln -sf "$DOTFILES/scripts/cputemp.sh" ~/.config/waybar/scripts/cputemp.sh
chmod +x "$DOTFILES/scripts/cputemp.sh"

mkdir -p ~/.config/wofi
ln -sf "$DOTFILES/wofi/config" ~/.config/wofi/config
ln -sf "$DOTFILES/wofi/powermenu.css" ~/.config/wofi/powermenu.css
ln -sf "$DOTFILES/wofi/style.css" ~/.config/wofi/style.css

mkdir -p ~/.config/waypaper/bgs
ln -sf "$DOTFILES/waypaper/config.ini" ~/.config/waypaper/config.ini
for bg in "$DOTFILES/waypaper/bgs/"*; do
  ln -sf "$bg" ~/.config/waypaper/bgs/$(basename "$bg")
done

echo "Done"
echo "Run: tmux source ~/.config/tmux/tmux.conf"
echo "Run: source ~/.zshrc"
