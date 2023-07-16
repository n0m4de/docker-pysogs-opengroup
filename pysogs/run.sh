apt -y install sogs-standalone
python3 -msogs --initialize
systemctl restart sogs-standalone.service
python3 -msogs --add-room fish --name "Fishing" --description "Australian fisheries chat"
python3 -msogs --rooms + --add-moderators 05a095b07d22feb40f046a34bb1bb3edfb0ed9490e89dc27f754c7e5c8c3264018 --admin --hidden
