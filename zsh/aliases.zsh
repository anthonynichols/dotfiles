# ==============================================================================
# @anthonynichols aliases
#
# For a full list of active aliases, run `alias`.
# ==============================================================================

# List directory contents
# -l = use a long listing format
# -A, --almost-all = do not list implied `.` and `..`
# -h, --human-readable = with `-l`, print sizes in human readable format (e.g., 1K 234M 2G)
# -t = sort by modification time
# -S = sort by file size
# -X = sort alphabetically by entry extension
# -r, --reverse = reverse order while sorting
# --group-directories-first = group directories before files
# -I, --ignore=PATTERN = do not list implied entries matching shell `PATTERN`
# Override the `lsa` provided by oh-my-zsh
alias lsa='ls -lAh'
# Override the `l` provided by oh-my-zsh
alias l='ls -lAh'
# Override the `la` provided by oh-my-zsh
alias la='ls -lah'

# Show/hide hidden files in macOS Finder
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Copy directory and its contents
alias cpd='cp -r'

# Make directory with -p
alias mkdirp='mkdir -p'

# git
alias gdprev='git diff HEAD~1 HEAD'

# Compress
# alias comp='function _compress(){ tar cjf $1.tar.bz2 $1; };_compress'

