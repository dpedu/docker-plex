docker-plex
===========

Container for running [Plex](https://plex.tv/).

*Usage:*

* Build: `docker build -t plex .`
* Run: `docker run -d -p 32400:32400 -p 32400:32400/udp plex

*Extras:*

* Plex data dir: `-v /your/plex/dir/:/var/lib/plexmediaserver/`
