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

texliveroot=$(find /usr/local/texlive/ -maxdepth 1 | grep -e ".*[0-9]\{4\}")
arch="$(uname -i)-linux"

env_path="$texliveroot/bin/$arch"
env_manpath="$texliveroot/texmf-dist/doc/man"
env_infopath="$texliveroot/texmf-dist/doc/info"

(echo -n 'export PATH=$PATH:'; echo "$env_path") >> ~/.bashrc
(echo -n 'export MANPATH=$MANPATH:'; echo "$env_manpath") >> ~/.bashrc
(echo -n 'export INFOPATH=$INFOPATH:'; echo "$env_infopath") >> ~/.bashrc
