# ==============================================================================
# @anthonynichols aliases
#
# For a full list of active aliases, run `alias`.
# ==============================================================================

# QUESTION: Why was this sourcing the .zshrc file? Was this causing a self referencing loop?
# Inception
# alias zsource="source $HOME/.zshrc"

# List directory contents
alias lsa='ls -lAh'
alias l='ls -lAh'
alias la='ls -lah'

# NOTE: This is done for me already, yay oh-my-zsh!
# Use gls if it exists because its better
# if [[ -x "$(command -v gls)" ]]; then
#   alias ls='gls --color=tty'
# fi

# Show/hide hidden files in macOS Finder
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# git
alias gdprev='git diff HEAD~1 HEAD'

# Compress
alias comp='function _compress(){ tar cjf $1.tar.bz2 $1; };_compress'

# Lazy Find
alias lfind="l . | grep -i"
