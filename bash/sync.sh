#!/bin/bash
cd "$(dirname "$0")"
function syncMac() {
	rsync --exclude "oh-my-zsh/" --exclude "windows/" --exclude ".DS_Store" --exclude ".brew" --exclude ".git/" --exclude ".gitattributes" --exclude ".gitignore" --exclude ".osx" --exclude ".zshrc" --exclude ".old_zshrc" --exclude "sync.sh" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	syncMac
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		syncMac
	fi
fi
unset syncMac
source ~/.bash_profile