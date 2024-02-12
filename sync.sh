#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"

function syncDirColors() {
  # Back up the existing go file if it exists before moving over
  if [[ -f ~/.dir_colors ]]; then
    mv ~/.dir_colors ~/.dir_colors.orig
  fi

  rsync -avh .dir_colors ~/.dir_colors
}


function sync() {
  rsync -avh --no-perms .vim .vimrc ~
  syncDirColors
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  sync
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo ""

	if [[ $REPLY =~ ^[Yy]$ ]]; then
		sync
	fi
fi

unset sync
unset syncDirColors
