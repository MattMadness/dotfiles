#!/bin/sh

echo "This will overwrite your existing dot configs!"
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
cp ./.config/alacritty.yml ~/.config/alacritty.yml

rm -rfv ~/.config/Thunar/*
rm -rfv ~/.config/awesome/*
rm -rfv ~/.config/cairo-dock/*
rm -rfv ~/.config/termite/*
rm -rfv ~/.config/terminator/*
rm -rfv ~/.config/fish/*
rm -rfv ~/.config/picom/*

cp -rv ./.config/Thunar ~/.config/ 
cp -rv ./.config/awesome ~/.config/
cp -rv ./.config/cairo-dock ~/.config/
cp -rv ./.config/termite ~/.config/
cp -rv ./.config/terminator ~/.config/
cp -rv ./.config/fish ~/.config/
cp -rv ./.config/picom ~/.config/

echo "Done!"
