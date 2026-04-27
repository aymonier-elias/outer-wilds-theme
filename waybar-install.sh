#!/bin/bash

sudo git clone https://github.com/aymonier-elias/outer-wilds-theme /tmp/repo && cp -rf /tmp/repo/waybar-theme/. ~/.config/waybar && sudo rm -rf /tmp/repo && omarchy-restart-waybar