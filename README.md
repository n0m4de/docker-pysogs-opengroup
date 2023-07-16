
# PySogs on Docker

## Install
1. Make sure you have docker and docker compose installed on your machine.
2. Make sure you have git installet on your machine.
git clone

## Prerequires
1. Configure DHCP Router to have static address
2. Configure Router Port Forarding : 
  External : 8000 > Internal : 8000


3. Replace SESSIONID in run.sh
4. Replace <public_ip> in sogs.ini

## RUN
docker compose up
docker attach pysogs
./run.sh

<public_ip>:8000

