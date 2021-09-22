#! /bin/bash

echo "> Vamos a agregar un nuevo producto comprado."
echo ""
echo "> Últimos productos:"
(cat cabeceraGeneral.txt ; cat listadoGeneral.txt | tail -10) | cut -d ';' -f 1-6,11-13 | column -s';' -t
echo ""
echo "> Mostrando los tipos de alimentos:"
tipos=`cat listadoGeneral.txt | cut -d';' -f 1 | sort | uniq`
echo $tipos
echo ""
