# ==============================================================================
# local exports
# ==============================================================================

# Set common .dotfiles location
export COMMON_DOTFILES=$HOME/code/dotfiles;

# Get common exports
source $COMMON_DOTFILES/zsh/exports.zsh;

export DEFAULT_HOSTNAME="zenodotus.local";

# Setup for nvm because nvm and node are being installed
export NVM_DIR="$HOME/.nvm"
