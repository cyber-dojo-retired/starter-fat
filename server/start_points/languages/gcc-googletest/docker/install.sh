#!/bin/bash
set -e

apt-get update
apt-get install --yes libgtest-dev cmake

cd /usr/src/gtest
cmake .
make
mv libg* /usr/lib

apt-get remove --yes cmake
