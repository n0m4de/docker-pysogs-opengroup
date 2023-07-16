FROM ubuntu:20.04
ENV TZ=Asia/Dubai
ENV SOGS_CONFIG=/sogs.ini

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY sogs.ini sogs.ini
COPY run.sh run.sh

RUN chmod +x run.sh
RUN apt update
RUN apt -y install curl lsb-release systemctl apt-utils nano tzdata dialog sqlite3
RUN apt-get -y install ucf libterm-readline-gnu-perl
RUN apt update && apt -y upgrade
RUN curl -so /etc/apt/trusted.gpg.d/oxen.gpg https://deb.oxen.io/pub.gpg
# Add the Oxen apt repository to your package configuration:
RUN echo "deb https://deb.oxen.io $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/oxen.list
# Update package lists:
RUN apt -y update
ENTRYPOINT bash

