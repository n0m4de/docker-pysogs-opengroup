# PySogs on Docker
Try to make a usable-ready container.. Need help.

If i connect on http://<public_ip>:8000 from device outside/inside LAN, I have an "Internal Server Error" on my broser.
The problem from uwsgi management (see: /etc/sogs/uwsgi-standalone.ini from container) #TODO maybe need user management

## About 

- Ducumentation : https://docs.oxen.io/oxen-docs/products-built-on-oxen/session/guides/open-group-setup
- GitHub Page : https://github.com/oxen-io/session-pysogs/blob/dev/setup.cfg

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
docker compose up
```
Inside containers :
```
./run.sh
```

The prompt ask you for your public url
```
http://<public_ip>:8000
```
> Replace <public_ip> by yours

