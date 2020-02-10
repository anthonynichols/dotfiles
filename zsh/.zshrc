# ==============================================================================
# @anthonynichols zsh configuration
# ==============================================================================

# Set .dotfiles location
export DOTFILES=$HOME/.dotfiles

# ------------------------------------------------------------------------------
# Exports
# ------------------------------------------------------------------------------

source $DOTFILES/exports.zsh;

# ------------------------------------------------------------------------------
# Path
# ------------------------------------------------------------------------------

source $DOTFILES/path.zsh;

# ------------------------------------------------------------------------------
# ZSH config
# ------------------------------------------------------------------------------

ZSH_THEME="anthonynichols";

ENABLE_CORRECTION="true"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
);

source $ZSH/oh-my-zsh.sh;

# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------

source $DOTFILES/aliases.zsh;

# ------------------------------------------------------------------------------
# Local config
# ------------------------------------------------------------------------------

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
