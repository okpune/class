FROM ubuntu:18.04

RUN apt-get update && apt-get install -y systemd

RUN systemctl mask dev-hugepages.mount sys-fs-fuse-connections.mount

VOLUME	/mnt
EXPOSE 80:80
EXPOSE 8080:8080

ENTRYPOINT ["/sbin/init"]
