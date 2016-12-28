FROM ubuntu:trusty

RUN apt-get update ;\
    apt-get install -y wget ;\
    wget -O /tmp/plex.deb https://downloads.plex.tv/plex-media-server/1.3.3.3148-b38628e/plexmediaserver_1.3.3.3148-b38628e_amd64.deb
    dpkg -i /tmp/plex.deb ;\
    rm -rf /tmp/plex.deb /var/lib/apt/lists/*

ADD start /start

VOLUME /var/lib/plexmediaserver/
