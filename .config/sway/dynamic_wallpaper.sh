#!/bin/sh

# Check if swaybg is already running
isServerExist=$(pgrep -x swaybg)

if [ -z "$isServerExist" ]; then
    echo "swaybg server not found"
else
    pkill -x swaybg
fi

# Automatically change wallpaper every 10 minutes
change_wallpaper() {
    swaybg -i "$(find /home/ko4/.config/sway/wallpaper/ -name "*.jpg" | shuf -n1)" -m fill &
    echo $! > /tmp/swaybg_pid  # Store the process ID
}

change_wallpaper

while true; do
    sleep 2000
    change_wallpaper
    sleep 5
    if [ -f /tmp/swaybg_pid ]; then
        kill "$(cat /tmp/swaybg_pid)" 2>/dev/null
    fi
done

