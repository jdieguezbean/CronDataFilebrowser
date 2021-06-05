#!/bin/bash
cd /
chmod 777 filebrowser
chmod 777 -R /etc/prometheus/alerts/
/bin/bash ./filebrowser config init
/bin/bash ./filebrowser config set --auth.method=noauth
/bin/bash ./filebrowser -a 0.0.0.0 -p 8081 -b /etc/prometheus/alerts/
