#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"

ZCONFIGDIR=$HOME/.zsh

function syncAliases() {
  # Back up the existing aliases file if it exists before moving over
  if [[ -f $ZCONFIGDIR/aliases.zsh ]]; then
    mv $ZCONFIGDIR/aliases.zsh $ZCONFIGDIR/aliases.orig.zsh
  fi

  rsync -avh --no-perms local-aliases.zsh $ZCONFIGDIR/aliases.zsh
}

function syncConfig() {
  # Back up the existing config file if it exists before moving over
  if [[ -f $ZCONFIGDIR/config.zsh ]]; then
    mv $ZCONFIGDIR/config.zsh $ZCONFIGDIR/config.orig.zsh
  fi

  rsync -avh --no-perms local-config.zsh $ZCONFIGDIR/config.zsh
}

function syncExports() {
  # Back up the existing exports file if it exists before moving over
  if [[ -f $ZCONFIGDIR/exports.zsh ]]; then
    mv $ZCONFIGDIR/exports.zsh $ZCONFIGDIR/exports.orig.zsh
  fi

  rsync -avh --no-perms local-exports.zsh $ZCONFIGDIR/exports.zsh
}

function syncPath() {
  # Back up the existing path file if it exists before moving over
  if [[ -f $ZCONFIGDIR/path.zsh ]]; then
    mv $ZCONFIGDIR/path.zsh $ZCONFIGDIR/path.orig.zsh
  fi

  rsync -avh --no-perms local-path.zsh $ZCONFIGDIR/path.zsh
}

function syncTheme() {
  rsync -avh --no-perms \
    ./.oh-my-zsh/themes/anthonynichols.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes
}

function syncPlugins() {
  if [[ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    chmod g-w,o-w ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  fi
  if [[ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    chmod g-w,o-w ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  fi
}

function syncDirColors() {
  # Back up the existing .dir_colors file if it exists before moving over
  if [[ -f $ZCONFIGDIR/.dir_colors ]]; then
    mv $ZCONFIGDIR/.dir_colors $ZCONFIGDIR/.dir_colors.orig
  fi

  rsync -avh --no-perms .dir_colors $ZCONFIGDIR/.dir_colors
}

function syncZshrc() {
  # Back up the existing .zshrc file if it exists before moving over
  if [[ -f ~/.zshrc ]]; then
    mv ~/.zshrc ~/.zshrc.orig
  fi

  rsync -avh --no-perms .zshrc ~
}

function sync() {
  rsync -avh --no-perms hushlogin.zsh $HOME/.hushlogin
  mkdir -p $HOME/.zsh
  syncAliases
  syncConfig
  syncExports
  syncPath
  syncTheme
  syncPlugins
  syncDirColors
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

unset ZCONFIGDIR
unset syncAliases
unset syncConfig
unset syncExports
unset syncPath
unset syncTheme
unset syncPlugins
unset syncDirColors
unset syncZshrc
unset sync
