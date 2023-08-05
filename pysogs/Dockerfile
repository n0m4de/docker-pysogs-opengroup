FROM debian:bullseye-slim

ARG PUBLICIP
ARG SESSIONID
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt -y upgrade
RUN apt -y install curl lsb-release apt-utils nano ucf python3-pip crudini
RUN apt-get -y install systemctl

RUN curl -so /etc/apt/trusted.gpg.d/oxen.gpg https://deb.oxen.io/pub.gpg
# Add the Oxen apt repository to your package configuration:
RUN echo "deb https://deb.oxen.io $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/oxen.list

RUN apt -y update

RUN pip install requests
RUN apt -y install sogs-standalone
RUN python3 -msogs --initialize

RUN mv key_x25519 /var/lib/session-open-group-server
RUN mv sogs.db /var/lib/session-open-group-server
RUN chmod a+r /var/lib/session-open-group-server/key_x25519
RUN chmod a+rw /var/lib/session-open-group-server/sogs.db

COPY sogs.ini /etc/sogs/sogs.ini
COPY uwsgi.ini .

RUN echo base_url="$PUBLICIP" | crudini --merge /etc/sogs/sogs.ini net

RUN sogs --add-room fishing --name "Fish Talk" --description "Three fish, four fish, yellow fish, green fish"
RUN sogs --rooms + --add-moderators $SESSIONID --admin --hidden


ENTRYPOINT uwsgi --ini uwsgi.ini




