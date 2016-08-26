FROM ubuntu:latest
MAINTAINER yasukun

ENV HOME /root
WORKDIR ${HOME}

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install software-properties-common
RUN apt-get update
RUN apt-get -y install build-essential
RUN apt-get -y install git
RUN apt-get -y install python
RUN apt-get -y install language-pack-ja-base language-pack-ja ibus-mozc
RUN apt-get -y install man
RUN apt-get -y install manpages-ja
RUN apt-get -y install tmux
RUN apt-get -y install lv
RUN apt-get -y install emacs

RUN apt-get update
RUN apt-get -y install rlwrap
RUN apt-get -y install curl
RUN apt-get -y install gnupg
RUN apt-get -y install emacs-mozc
RUN apt-get -y install r-base

RUN update-locale LANG=ja_JP.UTF-8 LANGUAGE=ja_JP:ja

ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8

RUN mkdir .emacs.d
RUN mkdir .emacs.d/site-lisp
# COPY ext/dot_emacs /root/.emacs
# COPY ext/dot_tmux.conf /root/.tmux.conf
# ADD ext/inits.tar.gz /root/.emacs.d

#  java
RUN add-apt-repository ppa:webupd8team/java -y && apt-get update  && (echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections) && apt-get install -y oracle-java8-installer oracle-java8-set-default && rm -rf /var/lib/apt/lists/*
