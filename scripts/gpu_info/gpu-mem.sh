#!/usr/bin/bash
#

VAR=$(radeontop -d- -l 1 | grep "vram" | awk '{print $34}' | tr 'mb,' ' ' | awk '{printf "%.2f GiB", $1/1024}')


echo "  ${VAR}"
