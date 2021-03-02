#!/bin/sh

#Desinstala paquete debian firmadigitalcr
apt remove -y firmadigitalcr &
apt purge  -y firmadigitalcr &


#Sale de sudo hacia USER para desinstalar extension Firma Digital
USER="$(who | awk '{print $1}')"

sudo -u "${USER}" bash << EOF
unopkg remove com.example.advanced_signature
EOF
echo "Desinstalacion finalizada"
