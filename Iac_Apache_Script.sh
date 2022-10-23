#!/bin/bash

echo "####################################"
echo "# Atualizando pacotes do servidor! #"
echo "####################################"
echo ""
echo "update"
apt-get update
echo "upgrade"
apt-get upgrade -y
echo ""
echo "###################################"
echo "# Instalando pacotes necessarios! #"
echo "###################################"
echo ""
echo "wget"
apt-get install wget -y
echo "unzip"
apt-get install unzip -y
echo "apache"
apt-get install apache2 -y
echo ""
echo "####################################"
echo "# Efetuando download da aplicacao! #"
echo "####################################"
echo ""
cd /tmp/
wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo ""
echo "###############################"
echo "# Descompactando a aplicacao! #"
echo "###############################"
echo ""
unzip -o /tmp/main.zip
rm -rf /tmp/main.zip
echo ""
echo "################################"
echo "# Diponibilizando a aplicacao! #"
echo "################################"
cp -vfR linux-site-dio-main/* /var/www/html/
rm -rf /tmp/linux-site-dio-main/
echo ""
echo "########################"
echo "# Execucao finalizada! #"
echo "########################"
