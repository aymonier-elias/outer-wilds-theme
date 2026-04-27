#!/bin/bash

FLAG="$HOME/.config/omarchy-theme/.waybar_checked"

if [ ! -f "$FLAG" ]; then
    touch "$FLAG"

    if ! command -v waybar &> /dev/null; then
        choice=$(echo -e "Install Waybar\nSkip" | rofi -dmenu -p "Waybar is missing")

        if [[ "$choice" == "Install Waybar" ]]; then
            sudo pacman -S --needed waybar
        fi
    fi
fi