#!/bin/sh

echo "Updating dotfiles..."

cp ~/.bashrc ~/Toolbox/dotfiles/dot.bashrc
cp -r /etc/xdg ~/Toolbox/dotfiles/etc/

echo "Updating pacman configurations..."

cp /etc/pacman.conf ~/Toolbox/dotfiles/etc/pacman.conf

echo "Done!"
