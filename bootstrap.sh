#!/bin/bash

#  bootstrap.sh
#
#  Created by David Berry on 12/07/2018.
#
# update packages
yum update

# install basic tools
yum install -y git
yum install -y wget

# install extended packages
yum -y install epel-release

# install python and related tools
yum -y install python36
curl -O https://bootstrap.pypa.io/get-pip.py
/usr/bin/python3.6 get-pip.py
/usr/local/bin/pip3.6 install virtualenv

# add postgres RPM for version 10
rpm -Uvh https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm

# install postgress and postgis
yum install -y postgresql10-server postgresql10
yum install -y postgis



