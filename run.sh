#!/bin/sh

cd /
chmod 777 filebrowser
./filebrowser config init
./filebrowser config set --auth.method=noauth
./filebrowser -a 0.0.0.0 -p 8081 -b /srv
