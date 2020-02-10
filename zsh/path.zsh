# ==============================================================================
# @anthonynichols path
# ==============================================================================

# Homebrew
PATH=/usr/local/bin

# User directory
if [[ -d ~/bin ]]; then
    PATH=~/bin:$PATH
fi;

PATH=$PATH:/usr/bin
PATH=$PATH:/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin

export PATH
