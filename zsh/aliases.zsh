# ==============================================================================
# @anthonynichols aliases
#
# For a full list of active aliases, run `alias`.
# ==============================================================================

# ------------------------------------------------------------------------------
# Directories
# ------------------------------------------------------------------------------

# List contents
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

function ls__help {
    echo "
List contents:
    -l
        use a long listing format

    -A, --almost-all
        do not list implied . and ..

    -h, --human-readable
        with -l, print sizes in human readable format (e.g., 1K 234M 2G)

    -t
        sort by modification time

    -S
        sort by file size

    -X
        sort alphabetically by entry extension

    -r, --reverse
        reverse order while sorting

    --group-directories-first
        group directories before files

    -I, --ignore=PATTERN
        do not list implied entries matching shell PATTERN


Examples:
    l -t
        List contents by date, newest at top
    l -tr
        List contents by date, newest at bottom
"
}

# Lazy Find
alias lfind='l . | grep -i'

# Global grep
alias -g G='| grep -i'

# Copy directory and its contents
alias cpd='cp -r'
