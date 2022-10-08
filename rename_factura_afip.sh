#!/bin/zsh
ps2ascii $1 > /tmp/factura.txt;

echo 'Ingresar comment o Enter para continuar: '
read comment;
head=$(head -5 /tmp/factura.txt)
nombreEmisor=$(echo $head | sed -En 's/.*Social: ([A-Za-z].*[A-Za-z])  *Fecha.*/\1/p')
fecha=$(echo $head | sed -En 's/.*([0-9][0-9]).([0-9][0-9]).[0-9][0-9]([0-9][0-9]).*/\1-\2-\3/p')
newNameNoComment=$(echo $fecha\_$nombreEmisor)
newNameWithComment=$(echo $fecha\_$nombreEmisor\_$comment)
destino=$(echo ~/directorio/destino/) # elegir directorio destino

if [ -z $comment ]; then
	mv $1 $destino${newNameNoComment}.pdf;
else
	mv $1 $destino${newNameWithComment}.pdf;
fi

rm /tmp/factura.txt;
