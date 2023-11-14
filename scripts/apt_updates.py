# Imports.
import subprocess
import re

# sync repos.
command = ["sudo", "apt", "update"]
_ = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL).stdout.decode('utf-8')

# Get updates.
command2 = ["/usr/lib/update-notifier/apt-check", "--human-readable"]
updates = subprocess.run(command2, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL).stdout.decode('utf-8')

numbers = re.findall("\d+", updates)

# Count packages.
update_count = int(numbers[0])

# Define the command to run on click.
click_command = "kitty --execute sudo apt upgrade -y"

# Generate XML output.
xml_output = f"<txt>  {update_count}</txt><txtclick>{click_command}</txtclick>"

# Print XML output.
print(xml_output)