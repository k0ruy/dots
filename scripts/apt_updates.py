# Imports.
import subprocess
import re

# sync repos.
command = ["sudo", "apt", "update"]
_ = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL).stdout.decode('utf-8')

# Get updates.
#command2 = ["/usr/lib/update-notifier/apt-check", "--human-readable"]
#updates = subprocess.run(command2, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL).stdout.decode('utf-8')
#numbers = re.findall("\d+", updates)
# Count packages.
# update_count = int(numbers[0])

command = ["apt", "list", "--upgradable"]
upgradable = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL).stdout.decode('utf-8')  
update_count = int(len(upgradable.splitlines()) - 1)

# Define the command to run on click.
click_command = "kitty --execute sudo apt upgrade"

# Generate XML output.
xml_txt = f"<txt>  {update_count}</txt><txtclick>{click_command}</txtclick>"
xml_tool = "<tool> Click to update system</tool>"

# Print XML output.
print(xml_txt)
print(xml_tool)
