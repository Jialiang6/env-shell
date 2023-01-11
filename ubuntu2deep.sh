#!/bin/bash

# apt source
cd /etc/apt/
mv sources.list sources.list.bk
cat >> sources.list << EOF
deb http://mirrors.163.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-backports main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal-proposed main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal-backports main restricted universe multiverse
EOF
# See other valid sources: <https://blog.csdn.net/whatday/article/details/105532784>
# xenial: ubuntu 16.04; bionic: ubuntu 18.04; focal: ubuntu 20.04; jammy: ubuntu 22.04

# dependency and vim
apt update
apt install -y net-tools --allow-remove-essential
apt remove vim-common
apt remove openssh-client
apt install -y vim
apt install -y openssh-server
