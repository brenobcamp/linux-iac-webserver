#!/bin/bash

echo "Atualizando o servidor..."

apt update -y
apt upgrade

echo "Instalando o Apache..."

apt install apache2 -y

echo "Instalando o Unzip..."

apt install unzip -y

echo "Baixando arquivos do site..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
# Para utilizar o script, troque o endereço do repositório acima para o endereço de download do seu repositório como arquivo zip

echo "Copiando arquivos para o Apache..."

unzip main.zip
cd linux-site-dio-main
# Troque "linux-site-dio" para o nome do seu repositório
cp -r * /var/www/html/ 
echo "Finalizado!"
