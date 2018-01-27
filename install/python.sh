#!/bin/bash
apt-get install -y build-essential libssl-dev libffi-dev python-dev \
    gfortran libatlas-base-dev  libbz2-dev libpng-dev libfreetype6-dev \
    libreadline-dev libsqlite3-dev tk-dev

apt-get install -y python3-pip
pip3 install --upgrade pip
pip3 install numpy scipy matplotlib ipython jupyter pandas sympy nose
pip3 install scikit-learn
pip3 install tensorflow keras