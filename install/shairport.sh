#!/bin/sh -e
sudo apt-get install avahi-utils libssl-dev libao-dev libpulse-dev libasound2-dev
git clone https://github.com/abrasive/shairport.git shairport
cd shairport
./configure
make
sudo make install
sudo cp -r scripts/debian/* /etc/
sudo adduser --system --disabled-login --ingroup audio shairport
cd ..
sudo cp ../etc/default/shairport /etc/default/shairport
sudo update-rc.d shairport defaults
sudo service shairport start
