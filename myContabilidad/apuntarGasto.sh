#! /bin/bash

echo "Nuevo gasto: "
echo "Cantidad (€): \c" ; read euros
echo "Fecha: \c" ; read fecha
echo "Lugar: \c" ;  read lugar

case "$lugar" in

ITV)
lugar="ITV Alcázar"
categoria="Coche"
bct="B"
observaciones="Inspección Opel Astra"
;;

AguAlc)
lugar="Aguas de Alcázar"
categoria="Agua"
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

Telpark)
categoria="Coche"
bct="T"
observaciones="Zona azul"
;;

Comsermancha)
categoria="Impuestos"
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

AliExpress)
echo "Categoría: \c" ; read categoria
bct="T"
echo "Observaciones: \c" ; read observaciones
;;

Carrefour)
echo "Categoría: \c" ; read categoria
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

Lavamanía)
categoria="Coche"
bct="C"
echo "Observaciones: \c" ; read observaciones
;;

CumAri)
lugar="Cumpleaños Arias"
categoria="Personal"
bct="C"
echo "Observaciones: \c" ; read observaciones
;;

LotAri)
lugar="Lotería Arias"
categoria="Personal"
bct="C"
echo "Observaciones: \c" ; read observaciones
;;

DipCR)
lugar="Diputación Ciudad Real"
categoria="Impuestos"
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

VirTel)
lugar="Virgin Telco"
categoria="Internet"
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

Mercadona)
categoria="Alimentación"
bct="B"
observaciones="Compra semanal"
;;

TogPri)
lugar="Together Price"
categoria="Personal"
bct="T"
observaciones="Cuota Apple Music"
;;

Comunidad)
categoria="Vivienda"
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

CarJJ)
lugar="Carnicería JJ"
categoria="Alimentación"
bct="C"
observaciones="Desayuno"
;;

Hucha)
categoria="Personal"
bct="C"
observaciones="Monedas euro"
;;

Globalcaja)
echo "Categoría: \c" ; read categoria
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

Bizum)
echo "Categoría: \c" ; read categoria
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

Podo)
categoria="Otros gastos"
bct="B"
observaciones="Luz casa Herencia"
;;

TarCre)
lugar="Tarjeta crédito"
categoria="Personal"
bct="B"
observaciones="Recibo mensual"
;;

ComReg)
lugar="Comercializadora Regulada"
echo "Categoría: \c" ; read categoria
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

PanSJ)
lugar="Panadería San José"
categoria="Alimentación"
bct="C"
echo "Observaciones: \c" ; read observaciones
;;

Apple)
categoria="Personal"
bct="T"
echo "Observaciones: \c" ; read observaciones
;;

Amazon)
echo "Categoría: \c" ; read categoria
bct="B"
echo "Observaciones: \c" ; read observaciones
;;

*)
echo "Categoría: \c" ; read categoria
echo "Pagado con (B, C, T): \c" ; read bct
echo "Observaciones: \c" ; read observaciones
;;

esac

euros=`printf "%5.2f" $euros`

echo $fecha';'$lugar';'$categoria';'-$(echo $euros | tr ',' '.')';'$(echo $bct | tr 'bct' 'BCT')';'$observaciones >> datos/registro_gastos.txt
