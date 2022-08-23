#!/bin/bash

# requires
apt-get update
apt-get upgrade -y
apt install -y curl perl

# download & install
curl -OL http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xvf install-tl-unx.tar.gz
rm *.tar.gz
cd install-tl-*
echo "I" | ./install-tl -no-gui

#texliveroot=$(find /usr/local/texlive/ -maxdepth 1 | grep -e ".*[0-9]\{4\}")
arch="$(uname -i)-linux"
year="$(date '+%Y')"

#env_path="$texliveroot/bin/$arch"
localbin_path="/usr/local/bin"

cd $localbin_path

ls ../texlive/$year/bin/$arch | xargs -Ifile ln -s ../texlive/$year/bin/$arch/ file

