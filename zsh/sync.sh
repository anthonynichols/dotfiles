#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function syncAliases() {
  # Back up the existing .aliases if it exists before moving over
  if [[ -f ~/.aliases ]]; then
    mv ~/.aliases ~/.aliases.orig;
  fi;

  rsync -avh --no-perms .aliases-local ~/.aliases;
}

function syncExports() {
  # Back up the existing .exports if it exists before moving over
  if [[ -f ~/.exports ]]; then
    mv ~/.exports ~/.exports.orig;
  fi;

  rsync -avh --no-perms .exports-local ~/.exports;
}

function syncPaths() {
  # Back up the existing .paths if it exists before moving over
  if [[ -f ~/.paths ]]; then
    mv ~/.paths ~/.paths.orig;
  fi;

  rsync -avh --no-perms .paths-local ~/.paths;
}

function syncTheme() {
  rsync -avh --no-perms \
    ./.oh-my-zsh/themes/anthonynichols.zsh-theme ~/.oh-my-zsh/themes;
}

function syncZshrc() {
  # Back up the existing .zshrc if it exists before moving over
  if [[ -f ~/.zshrc ]]; then
    mv ~/.zshrc ~/.zshrc.orig;
  fi;

  rsync -avh --no-perms .zshrc ~;
}

function sync() {
  rsync -avh --no-perms .hushlogin ~;

  syncAliases;
  syncExports;
  syncPaths;
  syncTheme;
  syncZshrc;

  source ~/.zshrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  sync;
elif [ "$1" == "--theme" -o "$1" == "-t" ]; then
  syncTheme;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";

	if [[ $REPLY =~ ^[Yy]$ ]]; then
		sync;
	fi;
fi;

unset syncAliases;
unset syncExports;
unset syncPaths;
unset syncTheme;
unset sync;
