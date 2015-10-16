FROM ubuntu:trusty

RUN apt-get update ;\
    apt-get install -y wget ;\
    wget -O /tmp/plex.deb https://downloads.plex.tv/plex-media-server/0.9.12.13.1464-4ccd2ca/plexmediaserver_0.9.12.13.1464-4ccd2ca_amd64.deb ;\
    dpkg -i /tmp/plex.deb ;\
    rm -rf /tmp/plex.deb /var/lib/apt/lists/*

ADD start /start

VOLUME /var/lib/plexmediaserver/
