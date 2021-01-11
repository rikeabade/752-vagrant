#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/Proxy-Server'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/ifcfg-enp0s3" /etc/syscinfg/network-scripts/ifconf-enp0s3
sudo cp  "${BASEDIR}/selinux" /etc/sysconfig/selinux
sudo cp  "${BASEDIR}/nginx.conf" /opt/nginx.conf
sudo cp "${BASEDIR}/ntop.repo" /opt/ntop.repo
sudo cp "${BASEDIR}/sql" /opt/sql


#Deixar o Firewalld desativado

sudo systemctl disable firewalld
