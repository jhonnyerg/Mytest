#!/bin/bash

#EDITAR ARCHIVOS_RESOLV.CONF 
DNS_clearwater=/etc/resolv.conf
DNS_clearwater1=/etc/resolvconf/resolv.conf.d/head
echo "Configurar DNS para nodos Clearwater con la siguiente configuración del DNS"
cat DNS
cat DNS >> $DNS_clearwater
cat DNS >> $DNS_clearwater1
echo "Archivo resolv.conf (RUTA:/etc/resolv.conf)"
cat DNS_clearwater
echo "Archivo head (RUTA:/etc/resolvconf/resolv.conf.d/head)"
cat DNS_clearwater1

#CREAR ARCHIVO clearwater.list
echo "Crear archivo clearwater.list"
prueba_archivo='clearwater.list'
touch $prueba_archivo 
#COCATENAR ARCHIVO clearwater_list CON EL ARCHIVO clearwater.list
#EN EL ARCHIVO clearwater_list esta la configuracion de APT software sources
cat clearwater_list >> $prueba_archivo 
echo "Mover archivo clearwater.list a la carpeta /etc/apt/sources.list.d/"
clearwater_list=/etc/apt/sources.list.d/
mv clearwater.list $clearwater_list


#Variable url, llave key
echo "Crear llaves clearwater"
url=http://repo.cw-ngv.com/repo_key
#OPCIONAL SI NO TIENE CURL
#sudo apt-get install curl
curl -L ${url} | sudo apt-key add -
echo "Revisar llaves"
sudo apt-key finger


echo "Actualizar linux"
sudo apt-get update

#DESHABILITAT FIREWALL
echo "Deshabilitar firewall"
ufw disable
echo "Mirar estado firewall"
ufw status 

echo "Crear carpeta clearwater"
mkdir clearwater

echo "Crear archivo local_config"
touch local_config
echo "Mover archivo local_config a la carpeta de clearwater"
mv local_config clearwater
echo "Editar archivo local_config"
cat nodo_bono >> clearwater/local_config 

echo "Instalar paquetes nodo Bono"
sudo DEBIAN_FRONTEND=noninteractive apt-get install bono restund --yes
echo "Primer paquete instalado"
echo "Instalar segundo paquete"
sudo DEBIAN_FRONTEND=noninteractive apt-get install clearwater-management --yes
echo "Segundo paquete instalado"

parar_proc=/etc/parar_proc.sh
echo "Creando script para parar los servicios del núcleo IMS de clearwater. Ruta:/etc/parar_proc.sh"
cat parar_proc_IMS >> $parar_proc 
chmod 775 $parar_proc
chmod 777 $parar_proc

activar_proc=/etc/activar_nucleo.sh
echo "Creando script para activar los servicios del núcleo IMS de clearwater en /etc/activar_nucleo.sh"
cat activar_nucleo_IMS >> $activar_proc 
chmod 775 $activar_proc
chmod 777 $parar_proc

echo "                                                       "
echo "************************************************************************************************************"
echo "************************************************************************************************************"
echo "                                  * * * * * * * * * * * * * * *                                             "
echo "                       Para ejecutar script de recuperación del núcleo IMS se debe:                         "
echo "************************************************************************************************************"
echo "************************************************************************************************************"
echo "1. Ingresar a la carpeta /etc/ y parar los servicios con el siguiente comando:"
echo "                                                       "
echo "    ./parar_proc.sh                  "
echo "                                                       "
echo "2. En la carpeta /etc/ activar los servicios con el siguiente comando:"
echo "                                                       "
echo "    ./activar_nucleo.sh               "
echo "                                                       "
echo "************************************************************************************************************"
echo "************************************************************************************************************"
echo "Una vez instalado el núcleo IMS de Clearwater, observar los servicios si estan OK con el siguiente comando:"
echo "                                                                                                             "
echo "                                   monit summary                                                             "
echo "                                                                                                             "
echo "************************************************************************************************************"
echo "************************************************************************************************************"   
#BORRAR ARCHIVO
#rm $prueba_archivo
