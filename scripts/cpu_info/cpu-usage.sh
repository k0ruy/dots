#!/usr/bin/bash

VAR=$(top -bn2 -d 0.5 | grep "Cpu(s)" | tail -n 1 | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{printf "%3d%%", 100 - $1}')

echo "<txt>  ${VAR}</txt>"
echo "<tool>Click to open btop</tool>"
echo "<txtclick> kitty -e btop</txtclick>"
