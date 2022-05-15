#!/bin/bash
    
# prepare any message you want
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%e %b %Y, %a %r")"
login_name="$(whoami)"

# For new line I use $'\n' here
message="New login to server"$'\n'"User: $login_name"$'\n'"From IP address: $login_ip"$'\n'"On $login_date"

#send it to telegram
python3 /home/pi/scripts/my-bot/my-bot.py  "$message"
