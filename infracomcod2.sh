#!/bin/bash


echo "Procurando por atualizações..."
apt-get update -y

echo "Instalando as atualizações..."
apt-get upgrade -y

echo "Instalando o Apache..."
apt-get install apache2 -y

echo "Instalando o Descompactador ZIP..."
apt-get install unzip -y

echo "Acessando o diretório: /tmp "
cd /tmp

echo "Baixando o arquivo..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo baixado..."
unzip main.zip

echo "Acessando a pasta do arquivo descompactado..."
cd linux-site-dio-main

echo "Copiando os arquivos da pasta, para o local publicável do Apache..."
cp -R * /var/www/html/

echo "Fim do script."
