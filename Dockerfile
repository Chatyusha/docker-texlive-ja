FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y

RUN apt install -y curl neovim

# install texlive
RUN curl -OL http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
RUN tar xvf install-tl-unx.tar.gz
RUN  cd install-tl-2
RUN echo "I" | ./install-tl -no-gui -repository http://mirror.ctan.org/systems/texlive/tlnet/
RUN ls /usr/local/texlive
