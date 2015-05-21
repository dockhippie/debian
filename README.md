# Debian

This is our minimal customized Debian base image based on
[debian:jessie](https://registry.hub.docker.com/_/debian/). Optionally you can
enable the ```logstash-forwarder```, to get it running you need to use ```s6```
and remove ```/etc/s6/forwarder/down```. If you start ```s6``` you will always
have running a cron daemon and logrotate as well, to rotate your logs you can
create a config file at ```/etc/logrotate.docker.d```


## Usage

```
docker run -ti --name debian webhippie/debian:latest bash
```


## Versions

* [latest](https://github.com/dockhippie/debian/tree/master)
  available as ```webhippie/debian:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/debian/)


## Available environment variables

```bash
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
