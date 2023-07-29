FROM debian:bullseye-slim


ENV TZ=Asia/Dubai

COPY sogs-standalone.ini sogs-standalone.ini
COPY run.sh run.sh
RUN chmod +x run.sh

RUN apt update && apt -y upgrade

RUN apt -y install curl lsb-release apt-utils nano tzdata dialog sqlite3
RUN apt-get -y install systemctl ucf libterm-readline-gnu-perl

RUN apt update

RUN curl -so /etc/apt/trusted.gpg.d/oxen.gpg https://deb.oxen.io/pub.gpg
# Add the Oxen apt repository to your package configuration:
RUN echo "deb https://deb.oxen.io $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/oxen.list
# Update package lists:
RUN apt -y update


ENTRYPOINT bash

