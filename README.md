
# PySogs on Docker

## Prerequires
1. Make sure you have docker and docker compose installed on your machine.
2. Make sure you have git installed on your machine.
3. Configure DHCP Router to have static address
4. Configure Router Port Forarding : 
  External : 8000 > Internal : 8000

## Install

```
git clone https://github.com/n0m4de/docker-pysogs-opengroup
cd docker-pysogs-opengroup
```

- Replace SESSIONID in run.sh
- Replace <public_ip> in sogs.ini

```
docker compose up
docker attach pysogs
./run.sh
```

3. The prompt ask you for your public url
```
<public_ip>:8000
```


