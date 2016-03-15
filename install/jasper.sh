#!/bin/sh -e
sudo apt-get install vim git-core python-dev python-pip bison libasound2-dev libportaudio-dev python-pyaudio pocketsphinx --yes
git clone https://github.com/jasperproject/jasper-client.git jasper
sudo pip install --upgrade setuptools
sudo pip install -r jasper/client/requirements.txt
chmod +x jasper/jasper.py
sudo apt-get install subversion autoconf libtool automake gfortran g++ --yes
svn co https://svn.code.sf.net/p/cmusphinx/code/trunk/cmuclmtk/
cd cmuclmtk/
./autogen.sh && make && sudo make install
cd ..
sudo su -c "echo 'deb http://ftp.debian.org/debian experimental main contrib non-free' > /etc/apt/sources.list.d/experimental.list"
sudo apt-get -t experimental install phonetisaurus m2m-aligner mitlm libfst-tools
wget https://www.dropbox.com/s/kfht75czdwucni1/g014b2b.tgz
tar -xvf g014b2b.tgz
cd g014b2b/
./compile-fst.sh
cd ..
mv g014b2b phonetisaurus
