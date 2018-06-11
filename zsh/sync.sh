#!/bin/sh
cd "$(dirname "$0")"
function sync() {
  rsync -avh \
        --progress \
        --exclude ".DS_Store" \
        --exclude ".git" \
        ../.oh-my-zsh/themes/anthonynichols.zsh-theme \
        ~/.oh-my-zsh/themes/anthonynichols.zsh-theme;
  
  rsync -avh \
        --progress \
        --exclude ".DS_Store" \
        --exclude ".git" \
        ../.oh-my-zsh/custom/plugins/git-flow-completion \
        ~/.oh-my-zsh/custom/plugins/git-glow-completion;
}

sync;
unset sync;
