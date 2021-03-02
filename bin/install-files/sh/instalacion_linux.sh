#!/bin/sh


#Nombre de archivos
compl_loffice=Firma_CI.oxt
paquete_firma=firmadigitalcr

#Usa sudo con la contraseña para comandos posteriores

echo %{panel1.adminpassword} | sudo --stdin echo ContraseñaIngresadaCorrectamente

#Firma Digital para el sistema operativo
echo "INSTALANDO PAQUETE FIRMADIGITALCR"

#Agrega key de firmadigitalsolvosoft
bash -c 'wget -O - http://repos.solvosoft.com/firmadigitalcr.gpg.key | sudo apt-key add -'

#Agrega repositorio de solvosoft a sources.list
LINE='#FirmaDigital.\ndeb http://repos.solvosoft.com/ubuntu xenial main'
FILE=/etc/apt/sources.list
grep -qF "$LINE" "$FILE"  || echo "$LINE" | sudo tee --append "$FILE"

#Instala paquete de firma digital y libreria de unopkg
sudo apt-get update
sudo apt-get install -y "$paquete_firma" libreoffice-common
