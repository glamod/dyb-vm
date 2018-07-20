#!/bin/bash

# update path variable
export PATH="/usr/local/bin/:${PATH}"

# base directory for env and django
mkdir /home/vagrant/glamod/

# make virtual environment
virtualenv -p python3.6 /home/vagrant/glamod/env

# activate environment
source /home/vagrant/glamod/env/bin/activate

# install django
pip3.6 install django

# default server
cd /home/vagrant/glamod/
django-admin startproject glamod_apps
