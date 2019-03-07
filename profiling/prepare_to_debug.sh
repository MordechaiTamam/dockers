#!/usr/bin/env bash
sudo echo "deb http://httpredir.debian.org/debian stretch main contrib non-free" >/etc/apt/sources.list
sudo apt-get update
apt-get install -y gdb python2.7-dbg



