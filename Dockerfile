FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y

RUN apt install -y curl neovim

# install texlive
WORKDIR /root
COPY ./installer/ubuntu.sh /root/
RUN chmod 755 ubuntu.sh
RUN ./ubuntu.sh
