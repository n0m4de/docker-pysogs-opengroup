
# PySogs on Docker

## 1. Configure DHCP Router to have static address

Router Port Forarding : 
  External : 8000 > Internal : 8000


Replace SESSIONID in run.sh
Replace <public_ip> in sogs.ini

docker compose up
docker attach pysogs
./run.sh

<public_ip>:8000

