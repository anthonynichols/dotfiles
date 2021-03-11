# ==============================================================================
# local exports
# ==============================================================================

# Set common zsh config directory location
export COMMON_ZCONFIGDIR=$HOME/code/dotfiles/zsh

# Get common exports
source $COMMON_ZCONFIGDIR/exports.zsh

export DEFAULT_HOSTNAME="zenodotus.local"

# Setup for nvm because nvm and node are being installed
export NVM_DIR="$HOME/.nvm"

# Easy folder access
export MEDIADIR=/mnt/user/tank/media
export MOVIEDIR=$MEDIADIR/movies
export MUSICDIR=$MEDIADIR/music
export TORRENTS=/mnt/user/tank/downloads/torrents
export TVDIR=$MEDIADIR/tvshows
