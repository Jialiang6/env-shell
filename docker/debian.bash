#!/bin/bash

# apt source
cd /etc/apt/
mv sources.list sources.list.bk
cat >> sources.list << EOF
deb http://mirrors.163.com/debian/ stretch main non-free contrib
deb http://mirrors.163.com/debian/ stretch-updates main non-free contrib
deb http://mirrors.163.com/debian/ stretch-backports main non-free contrib
deb-src http://mirrors.163.com/debian/ stretch main non-free contrib
deb-src http://mirrors.163.com/debian/ stretch-updates main non-free contrib
deb-src http://mirrors.163.com/debian/ stretch-backports main non-free contrib
deb http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib
deb-src http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib
EOF
# See other valid sources: <https://blog.csdn.net/whatday/article/details/105532784>

# dependency and vim
apt update && apt install -y libtinfo5
apt-get -y install vim

# up down left right backspace
# apt-get install ncurses-base

# backspace
cat >> ~/.profile << EOF

stty sane 
export TERM=linux
EOF
