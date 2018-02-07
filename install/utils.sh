#!/usr/bin/env bash
apt-get install -y apt-utils
apt-get install -y software-properties-common python-software-properties
apt-get -y clean
apt-get -y upgrade
apt-get install -y curl wget
apt-get install -y git
apt-get install -y tmux
apt-get install -y locales
locale-gen "en_US.UTF-8"
