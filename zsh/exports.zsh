# ==============================================================================
# @anthonynichols exports
# ==============================================================================

# Path to my oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh;

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# man
export MANPATH=/usr/local/man:$MANPATH;
# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim';
else
  export EDITOR='code';
  # export EDITOR='atom'
  # export EDITOR='vim';
fi;

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# nvm
# export NVM_DIR=$HOME/.nvm
