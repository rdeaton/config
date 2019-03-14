#!/bin/bash
# Taken from https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake
sudo apt install -y libxcb-xrm-dev
pushd .build
git clone https://www.github.com/Airblader/i3 i3-gaps
pushd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
popd
popd
