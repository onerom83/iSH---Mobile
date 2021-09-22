#!/bin/bash
echo ""
cat donaciones.txt
echo '--------------------'

proxima=$(
cat donaciones.txt | 
tail -n 1 | 
cut -d' ' -f 3 |
awk -F"\/" '{s= $2+3}END{print $1,s,$3}')

echo "Próxima donación🩸:"

dia=$(echo $proxima | cut -d' ' -f 1)
mes=$(echo $proxima | cut -d' ' -f 2)
ano=$(echo $proxima | cut -d' ' -f 3)


if [ $mes -gt 12 ];
then
mes=$((mes-12))
ano=$((ano+1))
	if [ $mes -lt 10 ];
	then 
	echo $dia "/0" $mes "/" $ano | sed 's/[[:space:]]//g'
	fi
elif [ $mes -lt 10 ];
then
echo $dia "/0" $mes "/" $ano | sed 's/[[:space:]]//g'
fi
echo ""
