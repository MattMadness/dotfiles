#!/bin/sh

echo "This will overwrite your existing dot configs and pacman configs!"
echo "Remember to look though this script to see what it replaces!"
echo "Use Ctrl+C within 5 seconds to cancel!"
sleep 1
echo "5..."
sleep 1
echo "4..."
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 1

echo "Importing dot configs..."

cp ./.bashrc ~/.bashrc 
cp ./.zshrc ~/.zshrc 

cp -r ./.config/xfce4 ~/.config/
cp -r ./.config/Thunar ~/.config/ 
cp -r ./.config/awesome ~/.config/
cp -r ./.config/cairo-dock ~/.config/
cp -r ./.config/termite ~/.config/
cp -r ./.config/terminator ~/.config/
cp -r ./.config/fish ~/.config/

echo "Done!"
