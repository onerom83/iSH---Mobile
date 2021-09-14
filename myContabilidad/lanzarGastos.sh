#! /bin/bash

fecha=`date +%d/%m/%y` ;

echo "\n Gastos totales a fecha de :" $fecha ;
echo "=====================================" ;

cat datos/registro_total.txt | \
sed 's/\./,/g' | \
awk -f gastosDesglosados.awk | \
sort | \
column -s';' -t > datos/gastos_totales.txt

cat datos/gastos_totales.txt
echo "====================================";

awk 'BEGIN{FS=":"}{total+=$2}END{printf ("> Total:%+19.2f\n", total)}' datos/gastos_totales.txt
