# ==============================================================================
# local path
# ==============================================================================

# Get common path
source $COMMON_ZCONFIGDIR/path.zsh

# yarn
if [[ -d $HOME/.yarn ]]; then
    PATH=$PATH:$HOME/.yarn/bin
fi

# rbenv
if [[ -d $HOME/.rbenv ]]; then
    PATH=$HOME/.rbenv/bin:$PATH
    PATH=$HOME/.rbenv/shims:$PATH
fi

# VS Code
if [[ -d /mnt/c/Users/Tony/AppData/Local/Programs/Microsoft\ VS\ Code/bin ]]; then
    PATH=/mnt/c/Users/Tony/AppData/Local/Programs/Microsoft\ VS\ Code/bin:$PATH
fi

# Other Windows apps
if [[ -d /mnt/c/Windows/System32 ]]; then
    PATH=$PATH:/mnt/c/Windows/System32
fi
if [[ -d /mnt/c/Windows/SysWOW64 ]]; then
    PATH=$PATH:/mnt/c/Windows/SysWOW64
fi

export PATH
