#! /bin/bash

banco=`cat datos/valores_ini/banco`
cartera=`cat datos/valores_ini/cartera`
tarjeta=`cat datos/valores_ini/tarjeta`

bancoFin=`(cat datos/registro_gastos.txt ; cat datos/registro_ingresos.txt) | grep ';B;' | cut -d';' -f4` 
carteraFin=`(cat datos/registro_gastos.txt ; cat datos/registro_ingresos.txt) | grep ';C;' | cut -d';' -f4`
tarjetaFin=`(cat datos/registro_gastos.txt ; cat datos/registro_ingresos.txt) | grep ';T;' | cut -d';' -f4`

bancoTotal="$banco $bancoFin"
carteraTotal="$cartera $carteraFin"
tarjetaTotal="$tarjeta $tarjetaFin"

echo 'Dinero disponible entre todas las cuentas:'
echo '=========================================='
echo 'Suma total: € \c'
echo -600 $bancoTotal $carteraTotal $tarjetaTotal | bc
echo '=========================================='
echo 'Banco: € \c'
echo 0 $bancoTotal | bc
echo 'Cartera: € \c'
echo 0 $carteraTotal | bc
echo 'Tarjeta: € \c'
echo 0 $tarjetaTotal | bc
echo '=========================================='
