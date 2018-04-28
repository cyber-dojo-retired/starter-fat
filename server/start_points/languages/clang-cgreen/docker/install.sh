#!/bin/sh
set -e

apt-get update
apt-get -y install wget cmake unzip
wget https://github.com/cgreen-devs/cgreen/archive/master.zip
unzip master.zip
cd cgreen-master
mkdir build
cd build
cmake ..
make
make install
