#!/usr/bin/env bash
set -e

echo "> Downloading templater..."
wget -O rootfs/usr/bin/templater \
  https://dl.webhippie.de/misc/templater/master/templater-master-linux-amd64

echo "> Make templater executable..."
chmod +x rootfs/usr/bin/templater

echo "> Downloading gosu..."
wget -O rootfs/sbin/su-exec \
  https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64

echo "> Make gosu executable..."
chmod +x rootfs/sbin/su-exec
