# INSTALADOR MULTIPLATAFORMA PARA FIRMA DIGITAL

_El instalador busca integrar todas las aplicaciones desarrolladas para firma digital en Costa Rica._

### Pre-requisitos 📋

_http://izpack.org/downloads/_

```
java -jar izpack-dist-5.1.3-installer.jar
```

### Instalar🔧

_La estructura de un proyecto IzPack consiste en un archivo install.xml y los recursos a los que hace referencia. Estos se agregan dentro de la carpeta bin en la instalación de IzPack._


```
git clone REPOSITORYURL

cd /dir/

sudo cp -R bin/. /path/to/IzPack/bin/
```

## Compilar 📦

_Una vez que estén todos los archivos completos, se debe proceder a compilar el proyecto para generar un instalador en formato .JAR_

```
./compile ej-install.xml -o EjemploInstaladorIzpack.jar

```

### Ejecutar 🔧
_El instalador se ejecuta como una aplicación java con el siguiente comando:_

```
java -jar FirmaDigitalMultiplataformav1_0.jar

```
