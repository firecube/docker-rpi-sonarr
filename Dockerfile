FROM firecube/rpi-mono:3.10 
MAINTAINER Simon Brushett <simon@firecbue.co.uk>

RUN apt-get update && apt-get install apt-transport-https -y --force-yes && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC && \
    echo "deb https://apt.sonarr.tv/ master main" | sudo tee -a /etc/apt/sources.list && \
    apt-get update && apt-get install nzbdrone -y
    
VOLUME /config
VOLUME /data
VOLUME /media

EXPOSE 8989
EXPOSE 9897

COPY start.sh /start.sh
COPY update.sh /update.sh

CMD ["/bin/bash", "/start.sh"]
