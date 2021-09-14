BEGIN {
	FS=";"
}
$0 !~ /Salario/  {
	categoria[$3]+=$4
}
END {
	for (producto in categoria)
	printf("> %s:; %+9.2f\n", producto, categoria[producto])
}
