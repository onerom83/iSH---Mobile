echo "-----------------------" ;
sh mostrarTodas.sh |
grep [0-9] | 
cut -d' ' -f 3 | 
awk '{s+= $1}END{print "Hay", s, "chapas en stock"}'
echo "-----------------------"
