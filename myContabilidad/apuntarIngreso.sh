#! /bin/bash

echo "Nuevo ingreso: "
echo "Cantidad (€): \c" ; read euros
echo "Fecha: \c" ; read fecha
echo "Pagador: \c" ;  read lugar
echo "Categoría: \c" ; read categoria
echo "Ingresado en (B, C, T): \c" ; read bct
echo "Observaciones: \c" ; read observaciones

euros=`printf "%5.2f" $euros`

echo $fecha';'$lugar';'$categoria';'+$(echo $euros | tr ',' '.')';'$(echo $bct | tr 'bct' 'BCT')';'$observaciones >> datos/registro_ingresos.txt
