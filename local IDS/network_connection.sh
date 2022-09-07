#!/bin/sh
value=$(netstat -A inet -p| grep ESTA|grep -v "chrome\|firefox\|vmplayer\|gateway:bootps\|splunk\|broadband\|fdm\|python\|mongod\|wenative\|wpsoffice\|systemd[-]resolve\|.ac:domain\|hypnotix\|java\|scrcpy\|adb" | awk '{print $7, $1, $4,"-->", $5}')
# netstat -A inet -p| grep ESTA | awk '{print $7, $1, $4,"-->", $5}'|awk '$1!~/chrome|firefox|hypnotix/'
if [ -n "$value" ]    
then
   /usr/bin/notify-send "network connection" "$value" # -u critical -t 5000
fi         
exit


