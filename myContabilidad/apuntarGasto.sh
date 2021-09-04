#! /bin/bash

echo "Nuevo gasto: "
echo "Fecha: \c" ; read fecha
echo "Lugar: \c" ;  read lugar
echo "Categoría: \c" ; read categoria
echo "Cantidad (€): \c" ; read euros
echo "Pagado con (B, C, T): \c" ; read bct
echo "Observaciones: \c" ; read observaciones

echo $fecha';'$lugar';'$categoria';'-$(echo $euros | tr ',' '.')';'$(echo $bct | tr 'bct' 'BCT')';'$observaciones >> datos/registro_gastos.txt
