#!/bin/bash
add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get -y install neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
