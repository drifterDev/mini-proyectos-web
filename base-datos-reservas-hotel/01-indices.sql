/* 
 Autor: Mateo Álvarez Murillo
 Fecha de creación: 2023
 Este código se proporciona bajo la Licencia MIT.
 Para más información, consulta el archivo LICENSE en la raíz del repositorio. 
 */

USE dbs_hotel;

CREATE INDEX index_cliente ON clientes(nombre, email);

CREATE INDEX calificacion_hotel ON hoteles(calificacion);

CREATE INDEX tipo_habitaciones ON habitaciones(tipo);

CREATE INDEX
    index_reserva ON reservas(fecha_entrega, fecha_recogida);