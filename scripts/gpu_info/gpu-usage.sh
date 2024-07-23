#!/usr/bin/bash


#VAR=$(sudo cat /sys/kernel/debug/dri/0/amdgpu_pm_info | grep "GPU Load" | awk '{printf "%3d%%", $3}')
VAR=$(radeontop -d- -l 1 | grep "gpu" | awk '{print $5}' | awk '{printf "%3d%%", $1}')

echo "  ${VAR}"
