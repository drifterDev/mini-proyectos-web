/* 
 Autor: Mateo Álvarez Murillo
 Fecha de creación: 2023
 Este código se proporciona bajo la Licencia MIT.
 Para más información, consulta el archivo LICENSE en la raíz del repositorio. 
 */

USE dbs_hotel;

/*
 Mostrar todos los clientes y sus respectivas nacionalidades.*/
CREATE VIEW nacionalidad_clientes AS
SELECT
    c.id,
    c.nombre,
    c.apellido,
    n.nacionalidad
FROM clientes c
    INNER JOIN nacionalidad n ON n.id = c.id_nacionalidad
ORDER BY c.id;

SELECT * FROM nacionalidad_clientes;

/*
 Obtener la cantidad de reservas realizadas por cada cliente.*/

CREATE VIEW reservas_hechas_clientes AS SELECT
    c.id,
    c.nombre,
    c.apellido,
    COUNT(r.id) AS reservas
FROM clientes c
    INNER JOIN reservas r ON r.cliente_id = c.id
GROUP BY c.id
ORDER BY c.id;

SELECT * FROM reservas_hechas_clientes;

/*
 Calcular el precio total de cada reserva (precio de la habitación multiplicado por la cantidad de días).*/

CREATE VIEW valor_cada_reserva AS
SELECT
    r.id AS id,
    h.precio * (
        DATEDIFF(
            r.fecha_recogida,
            r.fecha_entrega
        )
    ) AS precio_reserva
FROM reservas r
    INNER JOIN habitaciones h ON h.id = r.habitacion_id
ORDER BY r.id;

SELECT * FROM valor_cada_reserva;