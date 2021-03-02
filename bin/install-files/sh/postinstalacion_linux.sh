#!/bin/sh
echo "Limpiando archivos despues de instalacion"
rm -f %{INSTALL_PATH}/"instalacion_linux.sh"
rm -f %{INSTALL_PATH}/"instalacion_linux_extlo.sh"
rm -f "$0"
