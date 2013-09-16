#!/bin/bash 

mkdir -p $HOME/android/ccache
cat >> ~/.bashrc << EOF

export USE_CCACHE=1
export CCACHE_DIR=$HOME/android/ccache

EOF

# relogin to enablei USE_CCACHE and  CCACHE_DIR

./prebuilts/misc/linux-x86/ccache/ccache -M 100G

