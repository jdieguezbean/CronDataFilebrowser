#!/bin/sh

cd /
chmod 777 filebrowser
./filebrowser config init
./filebrowser users add admin admin
./filebrowser config set --auth.method=noauth
./filebrowser -a 0.0.0.0 -p 8081 -r /etc/prometheus/alerts
