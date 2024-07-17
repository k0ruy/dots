#!/bin/bash

export DBUS_SESSION_BUS_ADDRESS='unix:path=/run/user/1000/bus'
# Directories to backup
directories=("btop" "nvim" "rofi" "kitty" "picom" "yazi" "dunst")

# Source and backup directories
source_dir="$HOME/.config"
backup_dir="$source_dir/__backup_dots__"


# Create a timestamped subdirectory for each backup
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_subdir="$backup_dir/__backup_dots__$timestamp"

# Create the timestamped backup directory if it does not exist
mkdir -p "$backup_subdir"

# Copy each directory to the timestamped backup directory, following symlinks
for dir in "${directories[@]}"; do
  src="$source_dir/$dir"
  dest="$backup_subdir/$dir"

  if [ -d "$src" ]; then
    # Use -L to follow symlinks and -r to copy recursively
    /bin/cp -rL "$src" "$dest" 2>/dev/null
    echo "Backed up $src to $dest"
  else
    echo "Directory $src does not exist"
  fi
done

# Delete backups older than the latest 5
cd "$backup_dir"
ls -1t | sed -e '1,5d' | xargs -d '\n' rm -rf

dunstify -u normal "Dotfiles backup completed" "You can find the new files in ${backup_subdir}"
