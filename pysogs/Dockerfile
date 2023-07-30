FROM debian:bullseye-slim


RUN apt update && apt -y upgrade

RUN apt -y install curl lsb-release apt-utils nano tzdata dialog sqlite3
RUN apt-get -y install systemctl ucf libterm-readline-gnu-perl

RUN apt update

RUN curl -so /etc/apt/trusted.gpg.d/oxen.gpg https://deb.oxen.io/pub.gpg
# Add the Oxen apt repository to your package configuration:
RUN echo "deb https://deb.oxen.io $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/oxen.list

RUN apt -y update
RUN apt -y install sogs-standalone
CMD http://<public-ip>:8000

RUN addgroup uwsgi
RUN useradd -G uwsgi sogs

USER sogs

ENTRYPOINT python3 -msogs --initialize

