#!/bin/sh
apt update
apt upgrade
apt install -y build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev libhwloc-dev 
apt install git build-essential cmake libuv1-dev libssl-dev libmicrohttpd-dev gcc-7 g++-7 libhwloc-dev
git clone https://github.com/xmrig/xmrig.git 
cd xmrig
mkdir build
DCMAKE_C_COMPILER=gcc-7DCMAKE_C_COMPILER=g++-7
cd build
cmake .. 
make
./xmrig -o rx.unmineable.com:3333 -a rx -k -u BTT:TMvULY18iTCHQpDTPv52sVN3kBhb2SAGcT.d1 -t2
