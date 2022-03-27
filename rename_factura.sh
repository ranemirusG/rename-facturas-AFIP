#!/bin/zsh
ps2ascii $1 > /tmp/factura.txt;

echo 'Ingresar comentario (opcional): '
read comentario;

nombre=$(sed -En 's/.*Social: (.*)Fecha.*/\1/p' /tmp/factura.txt | sed '$!N;/^\(.*\)\n\1$/!P; D' | sed -e 's/[[:blank:]]*$//' | sed -e 's/\.//g')

fecha=$(sed -En 's/Raz.*([0-9][0-9]).([0-9][0-9])...([0-9][0-9]).*/\1-\2-\3/p' /tmp/factura.txt | sed '$!N;/^\(.*\)\n\1$/!P; D' | sed 's/^[[:blank:]]*//')

newName_i=$(echo $fecha\_$nombre\_$comentario)
newName_ii=$(echo $fecha\_$nombre)

if [ -z $comentario ]; then
	mv $1 /path/${newName_ii}.pdf;
else
	
	mv $1 /path/${newName_i}.pdf;
fi

rm /tmp/factura.txt;
