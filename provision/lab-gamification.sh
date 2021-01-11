#!/bin/bash

source /vagrant/provision/vars.sh

BASEDIR='/vagrant/files/Lab-Gamification'

usersADD;

sudo cp "${BASEDIR}/hosts" /etc/hosts
sudo cp "${BASEDIR}/hostname" /etc/hostname
sudo cp "${BASEDIR}/ifcfg-enp0s3" /etc/sysconfig/network-scripts/ifcfg-enp0s3
sudo cp "${BASEDIR}/ifcfg-enp0s8" /etc/sysconfig/network-scripts/ifcfg-enp0s8
sudo cp "${BASEDIR}/98_4linux" /etc/sudoers.d/98_4linux
sudo cp "${BASEDIR}/selinux" /etc/sysconfig/selinux
sudo cp "${BASEDIR}/modify-lab.ldif" /opt/modify-lab.ldif
sudo cp "${BASEDIR}/lab.ldif" /opt/lab.ldif
sudo cp "${BASEDIR}/inspec-2.2.70-1.el7.x86_64.rpm" /opt/inspec-2.2.70-1.el7.x86_64.rpm
sudo cp "${BASEDIR}/inspec-2.2.70-1.el7.x86_64.rpm" /opt/inspec-2.2.70-1.el7.x86_64.rpm
sudo cp "${BASEDIR}/snoopy-install.sh" /opt/snoopy-install.sh
sudo cp "${BASEDIR}/lab01" /usr/sbin/lab01
sudo cp "${BASEDIR}/lab02" /usr/sbin/lab02
sudo cp "${BASEDIR}/lab03" /usr/sbin/lab03
sudo cp "${BASEDIR}/lab04" /usr/sbin/lab04
sudo cp "${BASEDIR}/lab05" /usr/sbin/lab05
sudo cp "${BASEDIR}/lab06" /usr/sbin/lab06
sudo cp "${BASEDIR}/lab07" /usr/sbin/lab07
sudo cp "${BASEDIR}/lab08" /usr/sbin/lab08
sudo cp "${BASEDIR}/lab09" /usr/sbin/lab09
sudo cp "${BASEDIR}/lab10" /usr/sbin/lab10
sudo cp "${BASEDIR}/limpar-lab" /usr/sbin/limpar-lab
chmod 755 /usr/sbin/lab01
chmod 755 /usr/sbin/lab02
chmod 755 /usr/sbin/lab03
chmod 755 /usr/sbin/lab04
chmod 755 /usr/sbin/lab05
chmod 755 /usr/sbin/lab06
chmod 755 /usr/sbin/lab07
chmod 755 /usr/sbin/lab08
chmod 755 /usr/sbin/lab09
chmod 755 /usr/sbin/lab10
chmod 755 /usr/sbin/limpar-lab
chmod 755 /opt/snoopy-install.sh
#Deixar o Firewalld desativado

sudo systemctl disable firewalld
