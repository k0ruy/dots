#!/usr/bin/bash


VAR=$(sudo cat /sys/kernel/debug/dri/0/amdgpu_pm_info | grep "GPU Load" | awk '{printf "%3d%%", $3}')

echo "  ${VAR}"
