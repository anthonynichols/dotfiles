# ==============================================================================
# @anthonynichols zsh configuration
# ==============================================================================

# Set local .zsh files location
export ZCONFIGDIR=$HOME/.zsh

# ------------------------------------------------------------------------------
# Exports
# ------------------------------------------------------------------------------

source $ZCONFIGDIR/exports.zsh

# ------------------------------------------------------------------------------
# Path
# ------------------------------------------------------------------------------

source $ZCONFIGDIR/path.zsh

# ------------------------------------------------------------------------------
# ZSH config
# ------------------------------------------------------------------------------

ZSH_THEME="anthonynichols"

ENABLE_CORRECTION="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------

source $ZCONFIGDIR/aliases.zsh

# ------------------------------------------------------------------------------
# Config
# ------------------------------------------------------------------------------

source $ZCONFIGDIR/config.zsh

# ------------------------------------------------------------------------------
# Overrides
# ------------------------------------------------------------------------------

