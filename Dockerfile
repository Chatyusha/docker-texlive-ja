FROM ubuntu:latest

# requires
RUN apt-get update
RUN apt-get upgrade -y
RUN apt install -y curl perl

# install texlive ubuntu
WORKDIR /root
COPY ./installer/ubuntu.sh /root/
RUN chmod 755 ubuntu.sh
RUN ./ubuntu.sh
RUN rm -rf /root/*
