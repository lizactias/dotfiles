while inotifywait -e close_write ~/.dotfiles/waybar/.config/waybar/; do killall -SIGUSR2 waybar; done
