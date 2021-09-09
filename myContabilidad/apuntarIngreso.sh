#! /bin/bash

echo "Nuevo ingreso: "
echo "Cantidad (€): \c" ; read euros
echo "Fecha: \c" ; read fecha
echo "Pagador: \c" ;  read lugar

case "$lugar" in

TarCre)
lugar="Tarjeta crédito"
categoria="Personal"
bct="T"
observaciones="Recibo mensual"
;;

Padres)
echo "Categoría: \c" ; read categoria
bct="C"
echo "Observaciones: \c" ; read observaciones
;;

Nómina)
categoria="Salario"
echo "Ingresado en (B, C, T): \c" ; read bct
echo "Observaciones: \c" ; read observaciones
;;

Bizum)
echo "Categoría: \c" ; read categoria
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

*)
echo "Categoría: \c" ; read categoria
echo "Ingresado en (B, C, T): \c" ; read bct
echo "Observaciones: \c" ; read observaciones
;;

esac

euros=`printf "%5.2f" $euros`

echo $fecha';'$lugar';'$categoria';'+$(echo $euros | tr ',' '.')';'$(echo $bct | tr 'bct' 'BCT')';'$observaciones >> datos/registro_ingresos.txt
