# ==============================================================================
# local config
# ==============================================================================

# Lazy find
function lfind() {
  l ${2:-.} | grep -i ${1}
}

# Make dir and go!
function mkdirpgo() {
  mkdir -p -- "$1" && cd -P -- "$1"
}

# Fix permissions, specifically for Plex

function fix-perms() {
  # chmod -R 644 . && chown -R nobody:users .
  find . -type d -exec chmod 755 {} \;
  find . -type f -exec chmod 644 {} \;
  chown -R nobody:users .
}
