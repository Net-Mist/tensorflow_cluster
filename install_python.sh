#!/bin/bash

mkdir ~/python        
cd ~/python

wget http://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz
tar zxfv Python-3.6.0.tgz
find ~/python -type d | xargs chmod 0755
cd Python-3.6.0
./configure --prefix=$HOME/python # ./configure --enable-optimizations ?
make
make install

cd
echo \#Python >> .bashrc
echo export PATH=$HOME/python/Python-3.6.0/:\$PATH >> .bashrc

