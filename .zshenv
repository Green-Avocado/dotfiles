# Set configuration directory
ZDOTDIR=$HOME/.config/zsh

if [[ -a $ZDOTDIR/.zshenv.local ]]; then
    source $ZDOTDIR/.zshenv.local
fi
