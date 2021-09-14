#! /bin/bash

(cat datos/registro_gastos.txt ; cat datos/registro_ingresos.txt) | cut -d';' -f3 | sort | uniq > listado_gastos.txt

