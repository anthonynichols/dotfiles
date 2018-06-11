#!/bin/bash
cd "$(dirname "$0")"
function syncZsh() {
	rsync -av .zshrc ~/.zshrc
	rsync -av .oh-my-zsh/themes/anthonynichols.zsh-theme ~/.oh-my-zsh/themes/anthonynichols.zsh-theme
  rsync -av .aliases .paths .exports .hushlogin ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	syncZsh
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		syncZsh
	fi
fi
unset syncZsh
source ~/.zshrc