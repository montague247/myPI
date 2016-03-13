#!/bin/sh -e
#./update.sh
cd install
#./shairport.sh
./mopidy.sh
sudo etc/firewall/musicbox_iptables /etc/firewall/musicbox_iptables

