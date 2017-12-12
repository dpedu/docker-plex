FROM ubuntu:trusty

RUN apt-get update ;\
    apt-get install -y wget ;\
    wget -O /tmp/plex.deb "https://plex.tv/downloads/latest/1?channel=16&build=linux-ubuntu-x86_64&distro=ubuntu&X-Plex-Token=n8GxVsadGxysCz5Uw5yi" ;\
    dpkg -i /tmp/plex.deb ;\
    rm -rf /tmp/plex.deb /var/lib/apt/lists/*

ADD start /start

VOLUME /var/lib/plexmediaserver/
