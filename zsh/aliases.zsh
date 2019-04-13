# ==============================================================================
# @anthonynichols aliases
#
# For a full list of active aliases, run `alias`.
# ==============================================================================

# Inception
alias zsource="source $HOME/.zshrc"

# List directory contents
alias l='ls -lAh'
alias ll='ls -lh'
alias la='ls -lah'

# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# git
alias gdprev='git diff HEAD~1 HEAD'

# compress
alias comp='function _compress(){ tar cjf $1.tar.bz2 $1; };_compress'
