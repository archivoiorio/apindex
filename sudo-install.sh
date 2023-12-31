#!/usr/bin/bash

echo "installing apindex"
sudo apt-get update
sudo apt-get install cmake python3 -y
git clone --depth=1 https://github.com/archivoiorio/apindex.git
cd apindex
cmake . -DCMAKE_INSTALL_PREFIX=/usr
sudo make install
cd ..
rm -rf apindex/
