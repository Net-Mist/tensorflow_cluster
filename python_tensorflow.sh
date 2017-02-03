#!/bin/bash

# LD_LIBRARY_PATH="$HOME/my_libc_env/lib/x86_64-linux-gnu/:$HOME/my_libc_env/usr/lib64/" $HOME/my_libc_env/lib/x86_64-linux-gnu/ld-2.17.so `which python`
LD_LIBRARY_PATH="$HOME/my_libc_env/lib/x86_64-linux-gnu/:$HOME/my_libc_env/usr/lib64/:$LD_LIBRARY_PATH" $HOME/my_libc_env/lib/x86_64-linux-gnu/ld-2.17.so `which python`
