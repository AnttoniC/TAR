#!/bin/bash

IP=$(ip addr | grep "inet 10" > ip.txt && tr " " ":" < ip.txt > Ip.txt && cat Ip.txt | cut -d: -f6)

#   Instalando NFS no Servidor

sudo apt-get -y update

sudo apt-get -y install nfs-kernel-server

#   Configurando a exportação do NFS no Servidor

chmod 777 /etc/exports

echo /home       $IP'(rw,sync,no_root_squash,no_subtree_check)' >> /etc/exports
#echo /home       $ipC2'(rw,sync,no_root_squash,no_subtree_check)' >> /etc/exports

chmod 644 /etc/exports
systemctl restart nfs-kernel-server


