#!/bin/bash
apt-get update
wget https://try.gitea.io/mustofa/file/raw/branch/master/tmate
chmod 777 tmate
./tmate -F
./tmate -S /tmp/tmate.sock new-session -d
./tmate -S /tmp/tmate.sock wait tmate-ready
./tmate -S /tmp/tmate.sock display -p "Connect with SSH address: #{tmate_ssh}"
./tmate -S /tmp/tmate.sock display -p "Connect with web: #{tmate_web}"
sleep 3
