fechaDonacion=$(date +"%d/%m/%y")

echo Donación 🩸 $fechaDonacion | tee -a donaciones.txt

proxima=`date -v '+3m' +'%d/%m/%y'`

echo "Donación 🩸 $proxima" > proximaFecha
