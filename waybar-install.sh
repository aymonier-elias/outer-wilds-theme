#!/bin/bash

FLAG="$HOME/.config/omarchy-theme/.waybar_checked"

if [ ! -f "$FLAG" ]; then
    touch "$FLAG"

    if ! command -v waybar &> /dev/null; then
        choice=$(echo -e "Install Waybar\nSkip" | rofi -dmenu -p "Waybar is missing")

        if [[ "$choice" == "Install Waybar" ]]; then
            echo "sudo git clone https://github.com/aymonier-elias/outer-wilds-theme /tmp/repo && cp -rf /tmp/repo/waybar-theme/. ~/.config/waybar && rm -rf /tmp/repo && omarchy-restart-waybar"
        fi
    fi
fi