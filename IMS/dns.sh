#!/bin/bash
echo "Instalación DNS comando: apt-get install bind9"
apt-get install bind9

echo "Crear Zona DNS"
DNS_ZONES=/etc/bind/telco2.dnszones
echo "Configurando DNS ZONES"
cat DNS_Testbed_1 >> $DNS_ZONES 

echo "Configurar archivo name.conf.local"
DNS_ZONES1=/etc/bind/named.conf.local
echo "Configurando DNS ZONES"
cat zones >> $DNS_ZONES1 


echo "Archivos configurados ZONA TELCO 2"
cat $DNS_ZONES1
echo "Archivos configurados archivo name.conf.local"
cat $DNS_ZONES

echo "Reiniciar servicios DNS comando: /etc/init.d/bind9 restart"
/etc/init.d/bind9 restart
