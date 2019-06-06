#!/bin/bash
#prueba
#CREAR VARIABLE-INGRESE VALOR DESDE EL TECLADO E IMPRIMIR
#echo  -e "Introduzca el nombre del archivo"
#read nombre
#echo "Nombre del archivo, $nombre"
#ufw status
#ufw disable
#CREAR ARCHIVO SIMILAR A NANO
#prueba_archivo='clearwater.list'
#echo "crear archivo x"
#echo "copiar siguiente linea en el archivo x creado y presionar la tecla Ctrl+D"
#echo "hola mundo"
#touch $prueba_archivo 
#COCATENAR ARCHIVO HOLA CON EL ARCHIVO prueba1.sh
#EN EL ARCHIVO HOLA VA LA CONFIGURACION
#cat clearwater1 >> $prueba_archivo 
#echo "Mover archivo clearwater.list a la carpeta /etc/apt/sources.list.d/"
#clearwater_list=/etc/apt/sources.list.d/
#mv clearwater.list $clearwater_list
#url=http://repo.cw-ngv.com/repo_key
#OPCIONAL SI NO TIENE CURL
#sudo apt-get install curl
#curl -L ${url} | sudo apt-key add -
#sudo apt-key finger
#sudo apt-get update
#mkdir clearwater
#touch local_config
#mv local_config clearwater
#cat nodox >> clearwater/local_config 

#BORRAR ARCHIVO
#rm $prueba_archivo
#shared_config=/home/jhonnyer/Imágenes/clearwater/shared_config
#cat clearwater1
#cat clearwater1 >> $shared_config 

#EDITAR ARCHIVOS_RESOLV.CONF 
#DNS_clearwater=/etc/resolv.conf
#DNS_clearwater1=/etc/resolvconf/resolv.conf.d/head
#echo "Configurar DNS para nodos Clearwater con la siguiente configuración del DNS"
#cat DNS
#cat DNS >> $DNS_clearwater
#cat DNS >> $DNS_clearwater1
#echo "Archivo resolv.conf (RUTA:/etc/resolv.conf)"
#cat DNS_clearwater
#echo "Archivo head (RUTA:/etc/resolvconf/resolv.conf.d/head)"
#cat DNS_clearwater1

#echo "Una vez instalado el núcleo IMS de Clearwater, observar los servicios si estan OK con el siguiente comando:"
#echo "monit summary"

#parar_proc=/home/jhonnyer/Imágenes/clearwater/parar_proc.sh
#echo "Creando script para parar los servicios del núcleo IMS de clearwater en /etc/parar_proc.sh"
#cat parar_proc_IMS >> $parar_proc 
#chmod 775 $parar_proc
#chmod 777 $parar_proc

#activar_proc=/home/jhonnyer/Imágenes/clearwater/activar_nucleo.sh
#echo "Creando script para activar los servicios del núcleo IMS de clearwater en /etc/activar_nucleo.sh"
#cat activar_nucleo_IMS >> $activar_proc 
#chmod 775 $activar_proc
#chmod 777 $parar_proc
#apt-get install bind9
#/etc/init.d/bind9 restart

