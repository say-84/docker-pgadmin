#!/bin/bash
apt install git -y
cd /opt
git clone  https://github.com/say-84/docker-pgadmin
cd docker-pgadmin
chmod +x  runme.sh
./runme.sh
