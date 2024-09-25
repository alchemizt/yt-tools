#!/bin/bash

sudo apt install curl sqlite3 sqlite-utils wl-clipboard ffmpeg -y


function install_key_binds() {

read -r -d '' SETTINGS  <<EOF
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/download/ name 'download_video'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/download/ command 'bash paste_to_file'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/download/ binding '<CTRL><ALT><SHIFT><P>'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/list/ name 'paste_to_file'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/list/ command 'bash manage_list'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/list/ binding '<CTRL><ALT><SHIFT><L>'
EOF
 
# Append the SETTINGS variable to .bashrc while preserving new lines
printf "%s\n" "$SETTINGS" >> ~/.bashrc >> ~/.zshrc 

}

