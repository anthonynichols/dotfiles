#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"

function syncGo() {
  # Back up the existing go file if it exists before moving over
  if [[ -f /boot/config/go ]]; then
    mv /boot/config/go /boot/config/go.orig
  fi

  rsync -avh go /boot/config/go
  chmod 600 /boot/config/go
}

function sync() {
  rsync -avh --no-perms .vim .vimrc ~
  syncGo
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

unset syncGo
unset sync
