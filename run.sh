#!/bin/sh

cd /
chmod 777 filebrowser
chmod 777 -R /etc/prometheus/alerts/
./filebrowser config init
./filebrowser config set --auth.method=noauth
./filebrowser -a 0.0.0.0 -p 8081 -b /etc/prometheus/alerts/
