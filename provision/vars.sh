#!/bin/bash
USER='suporte'
PASS='4linux'

function usersADD {
  #criando o usuário suporte
  useradd -m -d "/home/${USER}" -p $(openssl passwd -1 ${PASS}) -s /bin/bash ${USER}
  #alterando a  senha do usuario vagrant
  sudo usermod -p $(openssl passwd -1 ${PASS}) vagrant

  #alterando a  senha do root
  sudo usermod -p $(openssl passwd -1 ${PASS}) root
}
