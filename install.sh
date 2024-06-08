#!/bin/bash

num = pacman -Q | grep yay | wc -l == 0

if (( $num == 0 )); then  
  pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd $HOME
fi

yay -S nvim zsh xwaylandvideobridge waybar hyprland fastfetch chromium webcord telegram-desktop nwg-look waypaper nautilus swappy steam pipewire papirus-icon-theme-git obsidian noto-fonts-cjk nuclear noto-fonts-emoji nm-connection-editor hyprshade hyprpicker hyprpaper hicolor-icon-theme grim godot blender adwaita-qt6-git ttf-apple-emoji

git clone https://github.com/alvatip/Borealis-cursors
sudo ./Borealis-cursors/install.sh


