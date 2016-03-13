#!/bin/sh -e
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/jessie.list
sudo apt-get install mopidy rsync python-pip python-dev build-essential --yes
pip install Mopidy-Local-SQLite
pip install Mopidy-Local-Images
pip install Mopidy-API-Explorer
pip install Mopidy-Material-Webclient
pip install Mopidy-Mobile
pip install Mopidy-Moped
pip install Mopidy-Mopify
pip install Mopidy-MusicBox-Webclient
pip install Mopidy-Party
pip install Mopidy-Simple-Webclient
pip install Mopidy-Spotmop
pip install Mopidy-WebSettings
pip install Mopidy-ALSAMixer
