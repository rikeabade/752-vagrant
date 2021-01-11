#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/Web-Server02'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/selinux" /etc/sysconfig/selinux
sudo cp "${BASEDIR}/ifcfg-enp0s3" /etc/sysconfig/network-scripts/ifcfg-enp0s3
sudo cp -r "${BASEDIR}/dexter" /opt/dexter
sudo cp -r "${BASEDIR}/pam" /opt/pam
sudo cp -r "${BASEDIR}/apache" /opt/apache
sudo cp -r "${BASEDIR}/dns" /opt/dns
sudo cp -r "${BASEDIR}/basic" /opt/basic
sudo cp -r "${BASEDIR}/intranet" /opt/intranet
sudo cp -r "${BASEDIR}/roundcubemail" /opt/roundcubemail
