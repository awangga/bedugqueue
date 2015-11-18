#!/bin/sh

# rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
yum -y install python-pip
pip install --upgrade pip
yum  install python-devel.x86_64
pip install psutil
