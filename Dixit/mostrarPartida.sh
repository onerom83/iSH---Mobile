echo " --- PARTIDA DIXIT ---"

for jugador in $(ls jugadores);
do
	suma=$(grep $jugador partida.txt | awk '{s+=$2}END{print s}')
	if [[ $suma -gt 0 ]];
	then
		echo $jugador $suma "puntos."
	else
		echo $jugador "0 puntos."
	fi
done | sort -k2nr

echo "----------------"
