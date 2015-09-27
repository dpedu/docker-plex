docker-plex
===========

Container for running [Plex](https://plex.tv/).

*Usage:*

* Build: `docker build -t plex .`
* Run: `docker run -d -net=host plex`

*Extras:*

* Plex data dir: `-v /your/plex/dir/:/var/lib/plexmediaserver/`
