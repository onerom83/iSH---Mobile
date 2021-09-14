#! /bin/bash

(cat datos/registro_gastos.txt ; cat datos/registro_ingresos.txt) | cut -d';' -f2 | sort | uniq > listado_lugares.txt

