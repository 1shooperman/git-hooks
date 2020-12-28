# base
FROM ubuntu:latest as hook-test

ARG HOME=/root

# install git
RUN apt-get update && \
    apt-get upgrade -y  &&  \
    apt-get install -y git python3 vim

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN cd /home; mkdir -p $HOME/test && cd $HOME/test && git init
RUN git config --global user.email "you@example.com" && \
    git config --global user.name "Your Name" && \
    git config --global core.editor "vim"

COPY . $HOME/.git_templates