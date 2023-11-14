# Imports.
import subprocess
import json

command = [ "gh", "api", "-H", "Accept: application/vnd.github+json", "/notifications" ]

# Try to connect to GitHub server and get notification count.
try:
    result = subprocess.run(command, stdout=subprocess.PIPE, stderr = subprocess.DEVNULL).stdout.decode('utf-8')
    json_object = json.loads(result)
    count = len(json_object)
    # Define the command to run on click.
    click_command = "google-chrome --new-window https://github.com/notifications"
    # Generate XML output.
    xml_output = f"<txt>  {count}</txt><txtclick>{click_command}</txtclick>"
    print(xml_output)

# Could not connect.
except(json.JSONDecodeError):
    xml_output2 = f"<txt>󰅤 </txt>"
    print(xml_output2)