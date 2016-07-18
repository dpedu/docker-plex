FROM ubuntu:trusty

RUN apt-get update ;\
    apt-get install -y wget ;\
    wget -O /tmp/plex.deb https://downloads.plex.tv/plex-media-server/1.0.0.2261-a17e99e/plexmediaserver_1.0.0.2261-a17e99e_amd64.deb ;\
    dpkg -i /tmp/plex.deb ;\
    rm -rf /tmp/plex.deb /var/lib/apt/lists/*

ADD start /start

VOLUME /var/lib/plexmediaserver/
