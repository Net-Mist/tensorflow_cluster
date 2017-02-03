#!/bin/bash


cd
mkdir cuda 
cd cuda
mv ../cuda_8.0.44_linux.run .
chmod +x cuda_8.0.44_linux.run
./cuda_8.0.44_linux.run -extract=`pwd`/nvidia_installers
cd nvidia_installers/
./cuda-linux64-rel-8.0.44-21122537.run

# Configure bashrc
cd
echo \#CUDA >> .bashrc
echo export PATH=$HOME/cuda-8.0/bin/:\$PATH >> .bashrc
echo export LD_LIBRARY_PATH=$HOME/cuda-8.0/lib64:\$LD_LIBRARY_PATH >> .bashrc
