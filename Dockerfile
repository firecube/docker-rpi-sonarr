FROM firecube/rpi-mono:3.10 
MAINTAINER Simon Brushett <simon@firecbue.co.uk>

RUN apt-get update && apt-get install apt-transport-https -y --force-yes && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC && \
    echo "deb https://apt.sonarr.tv/ master main" | sudo tee -a /etc/apt/sources.list && \
    apt-get update && apt-get install nzbdrone -y
