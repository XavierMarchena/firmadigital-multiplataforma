#!/bin/sh

#Nombre de archivos
compl_loffice=Firma_CI.oxt
file=%{INSTALL_PATH}/"$compl_loffice"

if [ -e "$file" ]; then
  #Instalacion con  unopkg
  echo "INSTALANDO EXTENSION LIBREOFFICE PARA FIRMA DIGITAL"
  echo "yes" | unopkg add %{INSTALL_PATH}/"$compl_loffice"

  #Fin de scripts de instalacion en linux
  echo ""
  echo "INSTALACION FINALIZADA"
else
    echo "No se instaló la extension de Firma Digital para LibreOffice"
fi
