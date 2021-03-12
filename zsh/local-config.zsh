# ==============================================================================
# local config
# ==============================================================================

# Eval dir_colors
if [[ -f ~/.dir_colors ]]; then
  eval $(dircolors ~/.dir_colors)
fi

# Lazy find
function lfind() {
  l ${2:-.} | grep -i ${1}
}

# Make dir and go!
function mkdirpgo() {
  mkdir -p -- "$1" && cd -P -- "$1"
}

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
