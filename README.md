# rename-facturas-AFIP
Shell script para renomobrar facturas y notas de crédito emitidas con el formato clásico de AFIP (Argentina).
Usando este script la factura tendrá como nombre:
[fecha]\_[emisor]\_[_comentario opcional_].pdf

Para convertir de pdf a texto uso el comando ps2ascii de [Ghostscript](https://www.ghostscript.com)

Ejemplo:
1) Carlos Gutierrez nos envia una factura emitida por él el día 29/03/22
2) El nombre del archivo es "factura123456789.pdf"
3) `rename_factura_afip.sh factura123456789.pdf`
4) Ahora nuestro archivo se llama 29-03-22_Carlos Gutierrez.pdf y es mucho más
fácil identificarlo, reenviarlo, archivarlo, etc.

Adicionalmente podemos agregar un comentario que se añadirá al final del nombre del archivo.
Continuando con el ejemplo:

29-03-22_Carlos Gutierrez_no pagar.pdf

