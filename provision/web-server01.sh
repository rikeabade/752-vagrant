#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/Web-Server01'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/interfaces" /etc/network/interfaces
sudo cp "${BASEDIR}/iscsid.conf" /opt/iscsid.conf
sudo cp -r "${BASEDIR}/apache" /opt/apache
sudo cp -r "${BASEDIR}/dns" /opt/dns
