#!/bin/bash
dconf dump '/org/gnome/desktop/wm/keybindings/' > keybindings.dconf
dconf dump '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' > custom-keybindings.dconf
dconf dump / > saved_settings.dconf
cp -r ~/.local/share/gnome-shell/extensions .
cp -r ~/.config/dconf .
