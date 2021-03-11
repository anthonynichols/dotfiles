#!/bin/bash
# Start the Management Utility
/usr/local/sbin/emhttp &

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

mkdir -p ~/code
cp -r /boot/config/dotfiles ~/code/dotfiles
sh ~/code/dotfiles/zsh/sync.sh -f
sh ~/code/dotfiles/sync.sh -f
chsh -s $(which zsh)
