#!/bin/bash
apt-get update
wget https://try.gitea.io/mustofa/file/raw/branch/master/tmate
chmod 777 tmate

./tmate -F || {
    ./tmate -S /var/tmate.sock new-session -d
    ./tmate -S /var/tmate.sock wait tmate-ready
    ./tmate -S /var/tmate.sock display -p "Connect with SSH address: #{tmate_ssh}"
    ./tmate -S /var/tmate.sock display -p "Connect with web: #{tmate_web}"
    sleep 3
}

while [ -e /var/tmate.sock ]
do
    sleep 1
done
