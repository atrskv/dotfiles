export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="my-theme"
DISABLE_AUTO_TITLE="true"
plugins=(git zsh-autosuggestions web-search zsh-syntax-highlighting)

export PATH="$PATH:$HOME/.local/bin:$HOME/nvim/bin:/usr/local/go/bin:/usr/games"
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export LSCOLORS="Cxfxcxdxbxegedabagacad"

bindkey '^F' autosuggest-accept

alias vi='nvim'
alias vim='nvim'
alias v='nvim'

alias clock='tty-clock -cs'

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export EDITOR=nvim
