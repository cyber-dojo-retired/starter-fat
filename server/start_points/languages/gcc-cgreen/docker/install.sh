#!/bin/bash
set -e

apt-get update
apt-get install --yes wget unzip cmake

wget https://github.com/cgreen-devs/cgreen/archive/master.zip
unzip master.zip
rm master.zip
cd cgreen-master
mkdir build
cd build
cmake ..
make
make install

apt-get remove --yes wget cmake unzip
