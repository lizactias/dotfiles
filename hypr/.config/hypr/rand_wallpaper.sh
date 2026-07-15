#!/usr/bin/env bash

DIR="$HOME/.dotfiles/wallpapers"

wallpaper=$(find "$DIR" -maxdepth 1 -type f \
  \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.webp' \) \
  | shuf -n1)

cat > "$HOME/.config/hypr/hyprpaper.conf" <<EOF
wallpaper {
    monitor = HDMI-A-1
    path = $wallpaper
    fit_mode = cover
}

wallpaper {
    monitor =
    path = $wallpaper
    fit_mode = cover
}

splash = false
EOF