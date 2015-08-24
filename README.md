# Debian

[![](https://badge.imagelayers.io/webhippie/debian:latest.svg)](https://imagelayers.io/?images=webhippie/debian:latest 'Get your own badge on imagelayers.io')

This is our minimal customized [Debian](https://www.debian.org) base image
based on [debian:wheezy](https://registry.hub.docker.com/_/debian/). Optionally
you can enable the ```logstash-forwarder```, to get it running you need to
provide the environment variable ```LOGSTASH_ENABLED=true``` and provide some
other environment variables to get it configured. You can see the available
variables below. If you start ```s6``` you will always have running a cron
daemon and logrotate as well, to rotate your logs you can create a config file
at ```/etc/logrotate.docker.d```


## Usage

```bash
docker run -ti \
  --name debian \
  webhippie/debian:latest
```


## Versions

* [latest](https://github.com/dockhippie/debian/tree/master)
  available as ```webhippie/debian:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/debian/)


## Available environment variables

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
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
