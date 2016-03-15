#!/bin/sh -e
#./update.sh
cd install
#./shairport.sh
./mopidy.sh
sudo cp etc/firewall/musicbox_iptables /etc/firewall/musicbox_iptables
sudo cp etc/motd_musicbox /etc/motd
