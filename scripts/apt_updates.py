# Imports.
import subprocess
from collections import Counter
import re

# Get updates.
command = [ "/usr/lib/update-notifier/apt-check", "--human-readable"]
updates = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL).stdout.decode('utf-8')


numbers = re.findall("\d+", updates)

# Count packages.
count = "  "+ numbers[0]
print(count)
