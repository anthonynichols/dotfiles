#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"

DOTFILES=$HOME/.dotfiles

function syncAliases() {
  # Back up the existing aliases file if it exists before moving over
  if [[ -f $DOTFILES/aliases.zsh ]]; then
    mv $DOTFILES/aliases.zsh $DOTFILES/aliases.orig.zsh
  fi

  rsync -avh --no-perms local-aliases.zsh $DOTFILES/aliases.zsh
}

function syncConfig() {
  # Back up the existing config file if it exists before moving over
  if [[ -f $DOTFILES/config.zsh ]]; then
    mv $DOTFILES/config.zsh $DOTFILES/config.orig.zsh
  fi

  rsync -avh --no-perms local-config.zsh $DOTFILES/config.zsh
}

function syncExports() {
  # Back up the existing exports file if it exists before moving over
  if [[ -f $DOTFILES/exports.zsh ]]; then
    mv $DOTFILES/exports.zsh $DOTFILES/exports.orig.zsh
  fi

  rsync -avh --no-perms local-exports.zsh $DOTFILES/exports.zsh
}

function syncPath() {
  # Back up the existing path file if it exists before moving over
  if [[ -f $DOTFILES/path.zsh ]]; then
    mv $DOTFILES/path.zsh $DOTFILES/path.orig.zsh
  fi

  rsync -avh --no-perms local-path.zsh $DOTFILES/path.zsh
}

function syncTheme() {
  rsync -avh --no-perms \
    ./.oh-my-zsh/themes/anthonynichols.zsh-theme ~/.oh-my-zsh/themes
}

function syncPlugins() {
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  chown g-w,o-w ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  chown g-w,o-w ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}

function syncZshrc() {
  # Back up the existing .zshrc file if it exists before moving over
  if [[ -f ~/.zshrc ]]; then
    mv ~/.zshrc ~/.zshrc.orig
  fi

  rsync -avh --no-perms .zshrc ~
}

function sync() {
  rsync -avh --no-perms hushlogin.zsh ~/.hushlogin
  mkdir -p ~/.dotfiles
  syncAliases
  syncConfig
  syncExports
  syncPath
  syncTheme
  syncPlugins
  syncZshrc
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  sync
elif [ "$1" == "--theme" -o "$1" == "-t" ]; then
  syncTheme
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo ""

	if [[ $REPLY =~ ^[Yy]$ ]]; then
		sync
	fi
fi

unset DOTFILES
unset syncAliases
unset syncConfig
unset syncExports
unset syncPath
unset syncTheme
unset syncPlugins
unset sync
