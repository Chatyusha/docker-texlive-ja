FROM ubuntu:latest

# install texlive ubuntu
WORKDIR /root
COPY ./installer/ubuntu.sh /root/
RUN chmod 755 ubuntu.sh
RUN ./ubuntu.sh
RUN rm -rf /root/*
