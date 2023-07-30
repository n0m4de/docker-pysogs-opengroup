FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt -y upgrade

RUN apt -y install curl lsb-release apt-utils nano ucf
RUN apt-get -y install systemctl

RUN apt update

RUN curl -so /etc/apt/trusted.gpg.d/oxen.gpg https://deb.oxen.io/pub.gpg
# Add the Oxen apt repository to your package configuration:
RUN echo "deb https://deb.oxen.io $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/oxen.list

RUN apt -y update

RUN apt -y install sogs-standalone
RUN python3 -msogs --initialize

#RUN useradd -Um -s /bin/bash sogs
#RUN chown sogs key_x25519
RUN chmod +r key_x25519
RUN chmod a+w sogs.db
RUN mv key_x25519 /var/lib/session-open-group-server
RUN mv sogs.db /var/lib/session-open-group-server

COPY sogs.ini /etc/sogs/sogs.ini

ENTRYPOINT bash

