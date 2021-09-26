#! /bin/bash

calc(){ awk "BEGIN { print "$*" }"; }

echo "··· Agregamos una factura nueva:"

echo "> Cantidad (€): \c" ; read euros
euros=`printf "%5.2f" $euros | tr ',' '.'`

echo "> Días: \c" ; read dias
eurosDia=`calc $euros/$dias`
eurosDia=`printf "%4.2f" $eurosDia | tr ',' '.'`

echo "> Mes de factura (1): \c" ; read mes01
echo "> Días del mes factura (1): \c" ; read diasMes01
echo "> Año (1): \c" ; read anno01

echo "> Mes factura (2): \c" ; read mes02
echo "> Días del mes factura (2): \c" ; read diasMes02
echo "> Año (2): \c" ; read anno02


echo "$euros;$dias;$eurosDia;$mes01;$diasMes01;$anno01;$mes02;$diasMes02;$anno02" >> listadoLuz.txt
