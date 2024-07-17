#!/usr/bin/bash


VAR=$(sensors | grep "PPT" | awk '{print ""$2" W"}' | sed 's/\.00//')

echo "  ${VAR}"
