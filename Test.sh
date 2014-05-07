#!/bin/sh
 
cd /usr/local/share
wget https://phantomjs.googlecode.com/files/phantomjs-1.9.0-linux-i686.tar.bz2 
tar -xjf /usr/local/share/phantomjs-1.9.0-linux-i686.tar.bz2 
sudo ln -sf /usr/local/share/phantomjs-1.9.0-linux-i686/bin/phantomjs /usr/local/bin/phantomjs
git clone git://github.com/n1k0/casperjs.git /usr/local/src/casperjs
cd /usr/local/src/casperjs
git checkout tags/1.0.2
ln -sf /usr/local/src/casperjs/bin/casperjs /usr/local/bin/casperjs
phantomjs --version
casperjs --version