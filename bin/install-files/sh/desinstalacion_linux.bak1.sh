#!/bin/sh

#Desinstala paquete debian firmadigitalcr
apt remove -y firmadigitalcr &
apt purge  -y firmadigitalcr &

#Definir con variable
#https://ask.libreoffice.org/en/question/33509/cannot-uninstall-extension-in-linux/?answer=34303#post-id-34303

#unopkg remove /path/to/your_extension.oxt 


#Busca directorio de instalación
#export DIRECTORIOEXTENSIONLO="$(find $HOME/.config/libreoffice/4/user/uno_packages/cache/uno_packages/ -iname 'Firma_CI.oxt' | sed -e 's,^\./,,' )"
#Elimina el nombre de la extension del directorio
#DIRECTORIOEXTENSIONLO=${DIRECTORIOEXTENSIONLO%/*}

#rm -r $DIRECTORIOEXTENSIONLO

#Eliminar linea en este archivo donde aparezca nombre advanced_signature o Firma_CI
#sed -i.bak '/advanced_signature/d' $HOME/.config/libreoffice/4/user/uno_packages/cache/uno_packages.pmap
#sed -i '/Firma_CI/d' $HOME/.config/libreoffice/4/user/uno_packages/cache/uno_packages.pmap

#Sale de sudo para desinstalar extension Firma Digital
USER="$(who | awk '{print $1}')"
sudo -u "${USER}" bash << EOF
unopkg remove com.example.advanced_signature
EOF
echo "Desinstalacion finalizada"
