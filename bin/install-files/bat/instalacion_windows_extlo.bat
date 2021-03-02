@echo off

REM Verificar si existe el archivo oxt, agregar if no se instalo firma
echo "INSTALANDO EXTENSION LIBREOFFICE PARA FIRMA DIGITAL"
start "" /wait "$INSTALL_PATH/Firma_CI.oxt"
echo  "INSTALACION FINALIZADA"
