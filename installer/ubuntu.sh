#!/bin/bash

# packages
apt-get update
apt-get upgrade -y
apt-get install curl

# download & install
curl -OL http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xvf install-tl-unx.tar.gz
rm *.tar.gz
cd install-tl-*
echo "I" | ./install-tl -no-gui -repository http://mirror.ctan.org/systems/texlive/tlnet/

ls /usr/local/texlive
