FROM ubuntu:16.04

RUN apt-get update

COPY ./install/*.sh  setup/
COPY config.vim /root/.vimrc

RUN bash setup/base.sh
RUN bash setup/fish.sh
RUN bash setup/vim.sh
RUN bash setup/node.sh
RUN bash setup/python.sh
RUN bash setup/psql.sh
RUN bash setup/redis.sh

WORKDIR /usr/src/work
CMD /usr/bin/fish
