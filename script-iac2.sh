#!/bin/bash

echo "< Instalando Servidor WEB... >"

echo "< Atualizando servidor >"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "< Baixando e copiando modelo da aplicacao >"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Instalacao finalizada --------------------"
