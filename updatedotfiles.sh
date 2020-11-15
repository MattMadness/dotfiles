#!/bin/sh

echo "Taking dot files from your home directory and overwriting the existing ones in this folder."
echo "You have 5 seconds to cancel."
sleep 5

rm -rfv ./.config/*

cp ~/.bashrc ./.bashrc
cp ~/.zshrc ./.zshrc

cp -rv ~/.config/xfce4 ./.config/
cp -rv ~/.config/Thunar ./.config/
cp -rv ~/.config/awesome ./.config/
cp -rv ~/.config/cairo-dock ./.config/
cp -rv ~/.config/termite ./.config/
cp -rv ~/.config/terminator ./.config/
cp -rv ~/.config/fish ./.config/
cp -rv ~/.config/picom ./.config/

echo "Done!"
