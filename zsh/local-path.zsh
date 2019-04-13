# ==============================================================================
# local path
# ==============================================================================

# Get common path
source $COMMON_DOTFILES/zsh/path.zsh;

# yarn
if [[ -d $HOME/.yarn ]]; then
    PATH=$PATH:$HOME/.yarn/bin;
fi;

# rbenv
if [[ -d $HOME/.rbenv ]]; then
    PATH=$HOME/.rbenv/bin:$PATH;

    # I feel like this should be eval'ed in the main file.
    # The export is fine, but I feel like eval'ing or running files breaks in
    # external modules.
    # eval "$(rbenv init -)";
fi;

export PATH;
