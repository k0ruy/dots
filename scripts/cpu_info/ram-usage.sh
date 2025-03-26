#!/usr/bin/bash
#
#
VAR=$(top -bn1 | grep "MiB Mem" | awk '{printf "%.2f GiB\n", $8/1024}')

echo "<txt>  ${VAR}</txt>"
echo "<tool>Click to open btop</tool>"
echo "<txtclick> kitty -e btop</txtclick>"

