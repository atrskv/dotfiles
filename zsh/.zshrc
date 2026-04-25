export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="my-theme"

DISABLE_AUTO_TITLE="true"

plugins=(git zsh-autosuggestions web-search)

source $ZSH/oh-my-zsh.sh

export LSCOLORS="Cxfxcxdxbxegedabagacad"

bindkey '^F' autosuggest-accept
