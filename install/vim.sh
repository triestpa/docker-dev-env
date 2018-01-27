#!/bin/bash
add-apt-repository ppa:jonathonf/vim
apt-get update
apt-get install -y vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall
