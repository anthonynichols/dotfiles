# ==============================================================================
# @anthonynichols aliases
#
# For a full list of active aliases, run `alias`.
# ==============================================================================

# ------------------------------------------------------------------------------
# Directories
# ------------------------------------------------------------------------------

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
# Override the `ls` command with colors
alias ls='ls --color=always'
# Override the `lsa` provided by oh-my-zsh
alias lsa='ls -lAh'
# Override the `l` provided by oh-my-zsh
alias l='ls -lAh'
# Override the `la` provided by oh-my-zsh
alias la='ls -lah'

# Copy directory and its contents
alias cpd='cp -r'

# Copy directory and its contents
alias cpd='cp -r'

# Make directory with -p
alias mkdirp='mkdir -p'

# git
alias gdprev='git diff HEAD~1 HEAD'

# Compress
# alias comp='function _compress(){ tar cjf $1.tar.bz2 $1; };_compress'

# Get a count of the files in a directory
alias dircount="ls -F | grep -v / | wc -l"
