# ==============================================================================
# login shells only (once per terminal tab; not on `source ~/.zshrc`)
#
# macOS's /etc/zprofile has already run path_helper, so PATH starts from a clean
# system base. Build the priority list here; .zshrc only appends what goes missing.
# ==============================================================================

# Homebrew: prepends /opt/homebrew/{bin,sbin}, sets MANPATH/INFOPATH/FPATH
eval "$(/opt/homebrew/bin/brew shellenv)"

typeset -U path manpath   # unique entries, first occurrence wins

# Highest priority first
path=(
  $HOME/.local/bin                                  # uv, pipx
  /opt/homebrew/opt/coreutils/libexec/gnubin        # GNU ls, sed, ... (the `ls --color` alias needs it)
  $HOME/.bun/bin
  $path
)
manpath=( /opt/homebrew/opt/coreutils/libexec/gnuman $manpath )

export PATH MANPATH
