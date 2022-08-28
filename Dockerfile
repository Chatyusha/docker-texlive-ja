FROM ubuntu

RUN apt update && apt upgrade -y

RUN apt install -y tzdata locales

RUN locale-gen ja_JP.UTF-8

ENV TZ Asia/Tokyo
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja

RUN apt install texlive-fonts-extra \
                texlive-fonts-recommended \
                texlive-lang-cjk \
                xdvik-ja -y
