#!/bin/bash

echo "Atualizando o servidor..."

apt update
apt upgrade

echo "Instalando o Apache..."

apt install apache2

echo "Instalando o Unzip..."

apt install unzip

echo "Baixando arquivos do site..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
# Para utilizar o script, troque o endereço do repositório acima para o endereço de download do seu repositório como arquivo zip

echo "Copiando arquivos para o Apache..."

unzip main.zip
cd linux-site-dio
# Troque "linux-site-dio" para o nome do seu repositório
cp * /var/www/html/ 
echo "Finalizado!"
