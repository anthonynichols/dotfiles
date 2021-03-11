# ==============================================================================
# @anthonynichols aliases
#
# For a full list of active aliases, run `alias`.
# ==============================================================================

# List directory contents
alias lsa='ls -lAh'
alias l='ls -lAh'
alias la='ls -lah'

# Show/hide hidden files in macOS Finder
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# git
alias gdprev='git diff HEAD~1 HEAD'

# Compress
# alias comp='function _compress(){ tar cjf $1.tar.bz2 $1; };_compress'

