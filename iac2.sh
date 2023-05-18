#!/bin/bash

echo "Atualizando o sistema...."

apt-get update
apt-get upgrade -y

echo "Instalando o servidor web...."

apt-get install apache2 -y

echo "Instalando o descompactador de arquivos...."

apt-get install unzip -y

echo "Fazendo o download da aplicação...."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos da aplicação...."

unzip main.zip

echo "Copiando os arquivos da aplicação para o diretório padrão do servidor web..."

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado com sucesso!!!"
