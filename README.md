# TensorFlow_cluster
Installing Python an TensorFlow on a Linux without using root access can be tricky. In this repository I write a set of scripts to install and run TensorFlow on the Computer Center cluster of NUS.

The installation can be done on the atlas4 node (because it has cmake and all the tools already installed). To launch TensorFlow with cuda the good node is gold.

Sometimes the wget command stops when running on the cluster. It seems random and I don't understand why. A solution to prevent this is to download the files on another computer and then SSH the files on the cluster.

## Installation :
### Python 3.6.0
Run the script install_python.sh, then reload bash

### Numpy 1.12.0
```
pip3 install numpy
```


### Cuda 8.0.44
 -  Go here https://developer.nvidia.com/cuda-downloads and download the good cuda version in the home directory.
 -  Run the script install_cuda.sh. You will probably need to change the cuda version in the script.
 -  At some point the script will ask for an install path. Put ~/cuda-8.0
 -  Reload bash.


### TensorFlow 0.12.1
Run the script tensorflow_cpu.sh or tensorflow_gpu.sh, depending of which version you want.

## Running TensorFlow:
Run the script python_tensorflow.sh. This script will run python with the good path for loading a recent version of libc.
