# rename-facturas-AFIP
Shell script para renomobrar facturas y notas de crédito emitidas con el formato clásico de AFIP.

Ejemplo:
1) John Doe nos envia una factura emitida por él el día 29/03/22
2) El nombre del archivo es "factura_n117054.pdf"
3) Hacemos: `rename_factura.sh factura_n117054.pdf`
4) Ahora nuestro archivo se llama 290322_JohnDoe.pdf

*Podemos agregar un comentario que se añadirá al final del nombre del archivo.
Ejemplo:
290322_JohnDoe_PENDIENTE.pdf

etc
