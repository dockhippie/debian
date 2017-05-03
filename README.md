# Debian

[![](https://images.microbadger.com/badges/image/webhippie/debian.svg)](https://microbadger.com/images/webhippie/debian "Get your own image badge on microbadger.com")

This is our minimal customized [Debian](https://www.debian.org) base image based on [official Debian](https://registry.hub.docker.com/_/debian/). Optionally you can enable a cron daemon, to get it running you need to provide the environment variable `CRON_ENABLED=true` or `CRON_ENABLED=1`. You can see the available variables below. Be aware that you have to start `s6` to get the cron daemon started automatically.


## Versions

* [latest](https://github.com/dockhippie/debian/tree/master) available as ```webhippie/debian:latest``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/debian/)
* [8](https://github.com/dockhippie/debian/tree/8) available as ```webhippie/debian:8``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/debian/)
* [7](https://github.com/dockhippie/debian/tree/7) available as ```webhippie/debian:7``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/debian/)


## Volumes

* None


## Ports

* None


## Available environment variables

```bash
ENV CRON_ENABLED false
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
