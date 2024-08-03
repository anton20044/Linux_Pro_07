#!/bin/bash

mkdir -p /srv/share/upload
chown -R nobody:nogroup /srv/share
chmod 0777 /srv/share/upload
echo "/srv/share 192.168.56.11/32(rw,sync,root_squash)" >> /etc/exports
exportfs -r
