#!/bin/sh
swaymsg -t get_outputs | grep -q '"name": "HEADLESS-1"' || swaymsg create_output
swaymsg output HEADLESS-1 mode 1980x1200 position 320 1440 scale 1
exec wayvnc -g -o HEADLESS-1
