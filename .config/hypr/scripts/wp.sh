#!/bin/sh

WPDIR="$HOME/Bilder/wp"

SELECTED=$(find "$WPDIR" -type f | wofi --show dmenu --prompt "Wallpaper wählen")

if [ -n "$SELECTED" ]; then

    pkill hyprpaper
    sleep 0.5

    echo "preload = $SELECTED" > ~/.config/hypr/hyprpaper.conf
    echo "wallpaper = ,$SELECTED" >> ~/.config/hypr/hyprpaper.conf

    hyprpaper &
fi
