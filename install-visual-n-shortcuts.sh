#!/bin/bash
# Shortcuts
dconf load '/org/gnome/desktop/wm/keybindings/' < keybindings.dconf
dconf load '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' < custom-keybindings.dconf

## Extensions
mkdir -p ~/.local/share/gnome-shell/
cp -r extensions ~/.local/share/gnome-shell/
mkdir -p ~/.config/
cp -r dconf ~/.config/

## Papirus
sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install papirus-icon-theme
## Arc theme
sudo apt install arc-theme
## breeze-cursor-theme
sudo apt-get install -y breeze-cursor-theme

# Tweaks
dconf load / < saved_settings.dconf
