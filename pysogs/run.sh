apt -y install sogs-standalone
python3 -msogs --initialize
systemctl restart sogs-standalone.service
python3 -msogs --add-room fish --name "Fishing" --description "Australian fisheries chat"
python3 -msogs --rooms + --add-moderators SESSIONID --admin --hidden
