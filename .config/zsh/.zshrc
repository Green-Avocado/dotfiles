HISTFILE=$ZDOTDIR/.zsh_history

ZSH=${ZSH:=$HOME/.oh-my-zsh}

ZSH_THEME=${ZSH_THEME:=candy}

plugins=(git)

source $ZSH/oh-my-zsh.sh

setopt no_share_history

if [[ -a $ZDOTDIR/.zshrc.local ]]; then
    source $ZDOTDIR/.zshrc.local
fi
