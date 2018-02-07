FROM ubuntu:16.04

RUN apt-get update

COPY ./install/*.sh  setup/
COPY ./config/config.vim /root/.vimrc
COPY ./config/config.vim /root/.config/nvim/init.vim

RUN bash setup/utils.sh
RUN bash setup/fish.sh
RUN bash setup/vim.sh
RUN bash setup/nvim.sh

RUN bash setup/node.sh
RUN bash setup/python.sh

# RUN bash setup/scipy.sh

RUN bash setup/psql.sh
RUN bash setup/redis.sh

COPY ./config/config.fish /root/.config/fish/config.fish

WORKDIR /usr/src/work
CMD /usr/bin/fish
