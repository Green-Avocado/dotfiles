# Add ~/bin to path
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

if [[ -a $ZDOTDIR/.zprofile.local ]]; then
    source $ZDOTDIR/.zprofile.local
fi
