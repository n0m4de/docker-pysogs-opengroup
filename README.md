# About 

Ducumentation : https://docs.oxen.io/oxen-docs/products-built-on-oxen/session/guides/open-group-setup

# PySogs on Docker

## Prerequires
- Make sure you have docker and docker compose installed on your machine.
- Make sure you have git installed on your machine.
- Configure DHCP Router to have static address
- Configure Router Port Forarding :
  > External : 8000 > Internal : 8000

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
> Replace <public_ip> by yours

