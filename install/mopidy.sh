#!/bin/sh -e
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/jessie.list
sudo apt-get install mopidy rsync python-pip python-dev build-essential upmpdcli --yes
sudo cp etc/mopidy/mopidy.conf /etc/mopidy/mopidy.conf
sudo cp etc/network/if-up.d/iptables /etc/network/if-up.d/iptables
sudo mkdir /music
sudo mkdir /music/MusicBox
sudo systemctl enable mopidy
sudo pip install Mopidy-Local-SQLite
sudo pip install Mopidy-Local-Images
sudo pip install Mopidy-API-Explorer
sudo pip install Mopidy-Material-Webclient
sudo pip install Mopidy-Mobile
sudo pip install Mopidy-Moped
sudo pip install Mopidy-Mopify
sudo pip install Mopidy-MusicBox-Webclient
sudo pip install Mopidy-Party
sudo pip install Mopidy-Simple-Webclient
sudo pip install Mopidy-Spotmop
sudo pip install Mopidy-WebSettings
sudo pip install Mopidy-ALSAMixer
