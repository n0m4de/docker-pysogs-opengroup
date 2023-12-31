# PySogs on Docker
Secure usable-ready container.

## About 

- Ducumentation : https://docs.oxen.io/oxen-docs/products-built-on-oxen/session/guides/open-group-setup
- GitHub Page : https://github.com/oxen-io/session-pysogs/

## Prerequires
- Make sure you have docker and docker compose installed on your machine.
- Make sure you have git installed on your machine.
- Configure DHCP Router to have static address
- Configure Router Port Forarding :
  > External : 8000 > Internal : 8000

## Install

- Get the project
```
git clone https://github.com/n0m4de/docker-pysogs-opengroup
cd docker-pysogs-opengroup
```

- Replace <public_ip> and <session_id> in [.env](https://github.com/n0m4de/docker-pysogs-opengroup/blob/main/.env) by yours.


```
docker compose up
```


