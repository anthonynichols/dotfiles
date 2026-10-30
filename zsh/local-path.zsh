# ==============================================================================
# local path
#
# The PATH priority list is built once per login in ~/.zprofile. This file runs on
# every interactive shell (and on `source ~/.zshrc`) and only APPENDS directories
# that have gone missing (e.g. an app launched a shell with a stripped PATH).
# ==============================================================================

# Get common path (typeset -U, path_ensure)
source $COMMON_ZCONFIGDIR/path.zsh

path_ensure \
  $HOME/.local/bin \
  /opt/homebrew/bin /opt/homebrew/sbin \
  /opt/homebrew/opt/coreutils/libexec/gnubin \
  $HOME/.bun/bin

export PATH
