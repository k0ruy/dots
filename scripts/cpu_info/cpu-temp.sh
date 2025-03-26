#!/usr/bin/bash

VAR=$(sensors | grep "Package id 0" | awk '{print $4}')

echo "<txt> ${VAR}</txt>"
echo "<tool>Click to open btop</tool>"
echo "<txtclick> kitty -e btop</txtclick>"

