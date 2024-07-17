#!/usr/bin/bash
#
#
VAR=$(top -bn1 | grep "MiB Mem" | awk '{printf "%.2f GiB\n", $8/1024}')

echo "  ${VAR}"
