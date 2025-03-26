#!/usr/bin/bash
#
VAR=$(sudo s-tui -j | grep package-0,0 | awk '{print $2}' | sed 's/.//;s/.$//' | tr '"' ' ')

echo "<txt>  ${VAR}W </txt>"
echo "<tool>Click to open btop</tool>"
echo "<txtclick> kitty -e btop</txtclick>"

