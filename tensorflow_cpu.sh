#!/bin/bash

# Prepare the install
cd
mkdir tensorflow_pip
cd tensorflow_pip/
wget https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.1-cp35-cp35m-linux_x86_64.whl
mv tensorflow-0.12.1-cp35-cp35m-linux_x86_64.whl tensorflow-0.12.1-cp36-cp36m-linux_x86_64.whl

# Install
pip3 install --upgrade tensorflow-0.12.1-cp36-cp36m-linux_x86_64.whl

# This part download a recent version of libc to run TensorFlow
cd
mkdir ~/my_libc_env
cd ~/my_libc_env
wget http://launchpadlibrarian.net/137699828/libc6_2.17-0ubuntu5_amd64.deb
wget http://launchpadlibrarian.net/137699829/libc6-dev_2.17-0ubuntu5_amd64.deb
wget ftp://rpmfind.net/linux/sourceforge/m/ma/magicspecs/apt/3.0/x86_64/RPMS.lib/libstdc++-4.8.2-7mgc30.x86_64.rpm
ar p libc6_2.17-0ubuntu5_amd64.deb data.tar.gz | tar zx
ar p libc6-dev_2.17-0ubuntu5_amd64.deb data.tar.gz | tar zx
rpm2cpio libstdc++-4.8.2-7mgc30.x86_64.rpm| cpio -idmv

