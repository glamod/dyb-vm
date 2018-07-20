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

# get django app
git clone https://github.com/glamod/glamod-inventory-app.git

cd /home/vagrant/glamod/glamod-inventory-app/
# get requirements
pip3.6 install -r requirements.txt

# make sure migrations are up to date
cd /home/vagrant/glamod/glamod-inventory-app/glamod_inv_site/
python3.6 manage.py makemigrations
python3.6 manage.py migrate
