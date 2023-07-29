apt -y install sogs-standalone
python3 -msogs --initialize

chmod a+rw key_x25519
chmod a+rw sogs.db
mv key_x25519 /var/lib/session-open-group-server/
mv sogs.db /var/lib/session-open-group-server/

systemctl restart sogs-standalone.service

sogs
