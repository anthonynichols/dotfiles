# ==============================================================================
# local exports
# ==============================================================================

# Set common zsh config directory location
export COMMON_ZCONFIGDIR=$HOME/code/dotfiles/zsh

# Get common exports
source $COMMON_ZCONFIGDIR/exports.zsh

export DEFAULT_HOSTNAME="zenodotus.local"

# Setup for nvm because nvm and node are being installed
export NVM_DIR="$HOME/.nvm"
