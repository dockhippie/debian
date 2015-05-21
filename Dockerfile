FROM debian:wheezy
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get install -y \
    ca-certificates \
    bash \
    bash-completion \
    ncurses-base \
    vim \
    gettext \
    curl \
    logrotate \
    procps && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir -p /etc/logrotate.docker.d

ADD rootfs /

CMD ["bash"]
