#!/bin/bash

# Core components (order is important!)
(
    feh --bg-fill ~/.wallpapers/greencar.jpg
    picom -b
    # ~/.config/polybar/launch.sh
    #nice -n 19 betterlockscreen -u "${HOME}/.wallpapers/tokyo-night-space_upscaled.png" --display 1 &
) &

# Services
#~/.config/cron/update_loadshedding.sh &
#~/.config/tmux/utils/start_all_servers.sh &
dbus-launch dunst --config ~/.config/dunst/dunstrc &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#birdtray &

# Apps
#xdg-settings set default-web-browser librewolf.desktop

# Keyboard stuff
#setxkbmap -option caps:escape
#xset r rate 165 50