#!/bin/bash

# Prepare the installation
mkdir ~/python        
cd ~/python

wget http://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz
tar zxfv Python-3.6.0.tgz
find ~/python -type d | xargs chmod 0755
cd Python-3.6.0

# Configure and install
./configure --prefix=$HOME/python 
make
make install

# Add this new version of python in the path. Don't forget to reload bash after changing
# the content of .bashrc
cd
echo \#Python >> .bashrc
echo export PATH=$HOME/python/bin/:\$PATH >> .bashrc
echo 'You can now reload bash by typing the command "bash"'

