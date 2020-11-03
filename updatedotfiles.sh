#!/bin/sh

echo "Updating dot configs..."

cp ~/.bashrc ./.bashrc
cp ~/.zshrc ./.zshrc

cp -r ~/.config/xfce4 ./.config/
cp -r ~/.config/Thunar ./.config/
cp -r ~/.config/awesome ./.config/
cp -r ~/.config/cairo-dock ./.config/
cp -r ~/.config/termite ./.config/
cp -r ~/.config/terminator ./.config/
cp -r ~/.config/fish ./.config/

echo "Updating pacman configs..."

cp /etc/pacman.conf ./pacman.conf

echo "Done!"
