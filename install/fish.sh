#!/bin/bash
apt-add-repository ppa:fish-shell/release-2
apt-get update
apt-get install -y fish
chsh -s /usr/bin/fish
curl -L https://get.oh-my.fish > install
fish install --noninteractive

echo omf install foreign-env nvm godfather | fish
