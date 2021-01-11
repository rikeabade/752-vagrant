#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/DevOps'

usersADD;

sudo cp "${BASEDIR}/etc-hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/interfaces" /etc/network/interfaces
sudo cp "${BASEDIR}/ansible-hosts" /etc/hosts
sudo cp "${BASEDIR}/files.yml" /opt/files.yml
sudo cp "${BASEDIR}/ntp.yml" /opt/ntp.yml
sudo cp "${BASEDIR}/base.yml" /opt/base.yml
sudo cp -r "${BASEDIR}/ansible" /home/vagrant/752

wget -q http://ftp.unicamp.br/pub/apache/directory/studio/2.0.0.v20200411-M15/ApacheDirectoryStudio-2.0.0.v20200411-M15-linux.gtk.x86_64.tar.gz

mkdir -p /opt/ldap
sudo cp -r "/home/vagrant/ApacheDirectoryStudio-2.0.0.v20200411-M15-linux.gtk.x86_64.tar.gz" /opt/ldap 
