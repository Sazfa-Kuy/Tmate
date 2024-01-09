#!/bin/bash
apt-get install software-properties-common
add-apt-repository ppa:tmate.io/archive
apt-get update
apt-get install tmate -y

cd ~

tmate -F || {
    tmate -S /var/tmate.sock new-session -d
    tmate -S /var/tmate.sock wait tmate-ready
    tmate -S /var/tmate.sock display -p "Connect with SSH address: #{tmate_ssh}"
    tmate -S /var/tmate.sock display -p "Connect with web: #{tmate_web}"
    sleep 3
}

while [ -e /var/tmate.sock ]
do
    sleep 1
done
