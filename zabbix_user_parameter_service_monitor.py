import subprocess
import os

service = $SERVICE
command = "ps aux | grep -v grep| grep "+ service +" | awk '{print $2}'"
command_output = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout.read()

if len(command_output) == 0:
  os.system("echo 0")
else:
  os.system("echo 1")
