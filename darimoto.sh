#!/bin/sh
sudo apt update
sudo apt install libpci3
sudo wget https://phoenixminer.info/downloads/PhoenixMiner_6.0c_Linux.tar.gz
tar -xf PhoenixMiner_6.0c_Linux.tar.gz
cd PhoenixMiner_6.0c_Linux
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./PhoenixMiner -pool stratum+ssl://eth-sg.flexpool.io:5555 -wal 0x0A5701d024Bb51fb4443d07aBf132E17Cb7148c9.$ip -epsw x -mode 1 -Rmode 1 -log 0 -mport 0 -etha 0 -retrydelay 1 -ftime 55 -tt 79 -tstop 89 -asm 2 -allpools 1
