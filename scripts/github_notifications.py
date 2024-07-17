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
    click_command = "exo-open --launch WebBrowser https://github.com/notifications"
    # Generate XML output.
    xml_txt = f"<txt>  {count}</txt><txtclick>{click_command}</txtclick>"
    xml_tool = "<tool>Click to open in web browser</tool>"
    print(xml_txt)
    print(xml_tool)

# Could not connect.
except(json.JSONDecodeError):
    xml_txt_2 = f"<txt>󰅤 </txt>"
    xml_tool_2 = "<tool>Cannot establish connection</tool>"
    print(xml_txt_2)
    print(xml_tool_2)

    
