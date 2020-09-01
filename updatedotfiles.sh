#!/bin/sh

echo "Updating dot configs..."

cp ~/.bashrc ~/Toolbox/dotfiles/.bashrc
cp -r ~/.config/xfce4 ~/Toolbox/dotfiles/.config/
cp -r ~/.config/Thunar ~/Toolbox/dotfiles/.config/

echo "Updating pacman configs..."

cp /etc/pacman.conf ~/Toolbox/dotfiles/pacman.conf

echo "Done!"
