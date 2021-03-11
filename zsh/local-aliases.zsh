# ==============================================================================
# local aliases
#
# For a full list of active aliases, run `alias`.
# ==============================================================================

# Get common aliases
source $COMMON_ZCONFIGDIR/aliases.zsh

# annoyance
alias git='nocorrect git'
alias node='nocorrect node'
alias npm='nocorrect npm'

# Fix permissions
alias fix-perms='chmod -R 644 . && chown -R nobody:users .'
