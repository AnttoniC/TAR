#!/bin/bash 

IP_PRIVATE=`curl -s http://169.254.169.254/latest/meta-data/local-ipv4`

#Criando o Banco de Dados do WordPress

sudo apt -y update

sudo apt-get -y install mysql-server

sudo apti -y install php libapache2-mod-php php-mysql

sudo mysql <<EOF

CREATE DATABASE wordpress;

CREATE USER `wp_admin`@`$IP_PRIVATE` IDENTIFIED BY 'root';

GRANT ALL ON wordpress.* TO `wp_admin`@`$IP_PRIVATE`;

FLUSH PRIVILEGES;
EOF

