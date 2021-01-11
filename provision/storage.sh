/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/Storage'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/interfaces" /etc/network/interfaces
sudo cp -r "${BASEDIR}/iscsi" /opt/iscsi
sudo cp -r "${BASEDIR}/mail" /opt/mail
sudo cp -r "${BASEDIR}/ldap" /opt/ldap
