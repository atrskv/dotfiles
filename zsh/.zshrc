export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="my-theme"
DISABLE_AUTO_TITLE="true"
plugins=(git zsh-autosuggestions web-search)

export PATH="$PATH:$HOME/.local/bin:$HOME/nvim/bin"
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export LSCOLORS="Cxfxcxdxbxegedabagacad"

bindkey '^F' autosuggest-accept

alias vi='nvim'
alias vim='nvim'
alias v='nvim'

source $ZSH/oh-my-zsh.sh
