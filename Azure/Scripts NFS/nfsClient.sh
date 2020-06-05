#!/bin/bash

#  Instalando NFS no Cliente

sudo apt-get -y update

sudo apt-get -y install nfs-common

#   Montando a pasta no Cliente

sudo mkdir -p /home

#sudo mount $ipS:/home /home
#sudo mount 10.0.0.0/24:/home /home

#  Verificando montagem da pasta

df -h
