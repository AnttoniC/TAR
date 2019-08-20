#!/bin/bash

#ipC1_private=`curl -s http://169.254.169.254/latest/meta-data/local-ipv4`
#ipS_private=`curl -s http://169.254.169.254/latest/meta-data/local-ipv4`

#   Instalando NFS no Servidor

sudo apt-get -y update

sudo apt-get -y install nfs-kernel-server

#   Configurando a exportação do NFS no Servidor

sudo chmod 777 /etc/exports

sudo echo /home       $ipC1'(rw,sync,no_root_squash,no_subtree_check)' >> /etc/exports
sudo echo /home       $ipC2'(rw,sync,no_root_squash,no_subtree_check)' >> /etc/exports

sudo chmod 644 /etc/exports
sudo systemctl restart nfs-kernel-server
