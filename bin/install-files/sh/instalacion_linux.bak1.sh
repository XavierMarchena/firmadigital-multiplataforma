#!/bin/sh
#ES NECESARIO EJECUTAR EL JAR COMO ROOT (SUDO)

#Nombre de archivos
compl_loffice=Firma_CI.oxt
paquete_firma=firmadigitalcr

#Instala paquete debian 
#echo %{panel1.adminpassword} | sudo --shell dpkg -i %{INSTALL_PATH}/$paq_deb
#ls

#echo %{panel1.adminpassword} | sudo --stdin echo ContraseñaIngresada

#Firma Digital sistema operativo
echo "INSTALANDO PAQUETE FIRMADIGITALCR"

#Agrega key de firmadigitalsolvosoft
bash -c 'wget -O - http://repos.solvosoft.com/firmadigitalcr.gpg.key | apt-key add -'

#Agrega repositorio de solvosoft a sources.list
LINE='deb http://repos.solvosoft.com/ubuntu xenial main'
FILE=/etc/apt/sources.list
grep -qF "$LINE" "$FILE"  || echo "$LINE" | tee --append "$FILE"

#Instala paquete de firma digital
apt-get update
apt-get install -y "$paquete_firma"

#Firmadigital Libreoffice
#sudo rm /home/human/.config/libreoffice/4/.lock

#Libreria de unopkg
apt install -y libreoffice-common

#Instalacion con  unopkg
echo "INSTALANDO EXTENSION LIBREOFFICE PARA FIRMA DIGITAL"
unopkg add %{INSTALL_PATH}/"$compl_loffice"