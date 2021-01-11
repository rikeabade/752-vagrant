#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/Security'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/interfaces" /etc/network/interfaces
sudo cp "${BASEDIR}/rc.local" /opt/rc.local
sudo cp -r "${BASEDIR}/proxy" /opt/proxy
sudo cp -r "${BASEDIR}/vpn" /opt/vpn
sudo cp -r "${BASEDIR}/apache" /opt/apache
sudo cp -r "${BASEDIR}/iptables" /opt/iptables
sudo cp -r "${BASEDIR}/sarg" /opt/sarg
