#!/bin/bash

#inotify-tools is a tool you can use (a.o.) to watch a defined folder and take (defined) actions if a new file is added to the folder.

#Install inotify-tools
#sudo apt-get install inotify-tools
#Paste the script below in an empty file, set the folder to watch ("/path/to/your/downloadfolder"), define the command it should run ("command-to-run-your-application") safe it as notifyscript.sh,
#make it executable for convenience reasons, and add it to your startup applications: 
#(Preferences > Default applications for LXSession, then choose "Autostart". Add the command:
#/path/to/notifyscript.sh
#for more way to watch a directory refer to https://askubuntu.com/questions/518457/autostart-program-whenever-a-file-is-added-to-a-folder

while true
do
    fileName=$(inotifywait -r -e create /path/to/your/downloadfolder | sed -r 's/^.*CREATE(,ISDIR)*\s+(.*)$/\2/g')
    command-to-run-your-application
done
