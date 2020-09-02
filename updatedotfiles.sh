#!/bin/sh

echo "Updating dot configs..."

cp ~/.bashrc ./.bashrc
cp ~/.zshrc ./.zshrc

cp -r ~/.config/xfce4 ./.config/
cp -r ~/.config/Thunar ./.config/
cp -r ~/.config/awesome ./.config/

echo "Updating pacman configs..."

cp /etc/pacman.conf ./pacman.conf

echo "Done!"
