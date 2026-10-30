# ==============================================================================
# @anthonynichols path
#
# Never assign PATH from scratch here: this runs on every interactive shell and on
# `source ~/.zshrc`, so a reset would wipe things like an activated venv.
# ==============================================================================

typeset -U path manpath   # unique entries, first occurrence wins

# Append each existing directory that is not already on PATH. Never reorders or prepends.
path_ensure() {
  local d
  for d in "$@"; do
    [[ -d $d && -z ${path[(r)$d]} ]] && path+=( $d )
  done
  return 0
}

# Standard system dirs (path_helper normally provides these already)
path_ensure /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin /sbin

export PATH
