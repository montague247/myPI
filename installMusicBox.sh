#!/bin/sh -e
#./update.sh
cd install
#./shairport.sh
#./mopidy.sh
cd ..
sudo apt-get install iptables-persistent
sudo cp etc/firewall/musicbox_iptables /etc/iptables/rules.v4
sudo cp etc/motd_musicbox /etc/motd
