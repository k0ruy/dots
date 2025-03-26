#!/usr/bin/bash

export DBUS_SESSION_BUS_ADDRESS='unix:path=/run/user/1000/bus'

echo $(dunstify "IMPORTANT README" "Update your system using 'sudo pacman -Syu'" -u critical)
