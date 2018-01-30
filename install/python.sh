#!/bin/bash
apt-get install -y build-essential libssl-dev libffi-dev python-dev \
    gfortran libatlas-base-dev  libbz2-dev libpng-dev libfreetype6-dev \
    libreadline-dev libsqlite3-dev tk-dev

apt-get install -y python-dev python-pip python3-dev python3-pip
pip3 install --upgrade pip
