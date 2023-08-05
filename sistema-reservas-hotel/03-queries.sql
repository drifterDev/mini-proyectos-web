/* 
 Autor: Mateo Álvarez Murillo
 Fecha de creación: 2023
 Este código se proporciona bajo la Licencia MIT.
 Para más información, consulta el archivo LICENSE en la raíz del repositorio. 
 */

USE dbs_hotel;

/*
 Mostrar todos los clientes y sus respectivas nacionalidades.*/

SELECT
    c.id,
    c.nombre,
    c.apellido,
    n.nacionalidad
FROM clientes c
    INNER JOIN nacionalidad n ON n.id = c.id_nacionalidad
ORDER BY c.id;

/*
 Obtener la cantidad de reservas realizadas por cada cliente.*/

SELECT
    c.id,
    c.nombre,
    c.apellido,
    COUNT(r.id) AS reservas
FROM clientes c
    INNER JOIN reservas r ON r.cliente_id = c.id
GROUP BY c.id
ORDER BY c.id;

/*
 Encontrar las habitaciones con una capacidad específica y ordenarlas por precio.*/

SELECT * FROM habitaciones WHERE capacidad>=2 ORDER BY precio DESC;

/*
 Mostrar todos los clientes que han realizado reservas en un hotel específico.*/

SELECT
    c.id AS id,
    CONCAT(c.nombre, ' ', c.apellido) AS cliente
FROM clientes c
    INNER JOIN reservas r, hoteles h, habitaciones ha
WHERE
    c.id = r.cliente_id
    AND r.habitacion_id = ha.id
    AND ha.hotel_id = h.id
    AND h.id = 4;

/*
 Calcular el precio total de cada reserva (precio de la habitación multiplicado por la cantidad de días).*/

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

/*
 Encontrar los hoteles con el promedio más alto de calificaciones.*/

SELECT
    id,
    nombre,
    ciudad,
    pais,
    calificacion
FROM hoteles
WHERE
    calificacion IN ('4', '5')
ORDER BY calificacion DESC;

/*
 Obtener todos los clientes que tienen correos electrónicos inválidos (que no contienen "@").*/

SELECT * FROM clientes WHERE email NOT LIKE '%@%';

/*
 Encontrar las habitaciones que han sido reservadas más de una vez.*/

SELECT
    ha.id AS id,
    ho.nombre AS hotel,
    COUNT(re.id) AS reservas
FROM habitaciones ha
    INNER JOIN reservas re ON ha.id = re.habitacion_id
    INNER JOIN hoteles ho ON ha.hotel_id = ho.id
GROUP BY ha.id
HAVING COUNT(re.id) >= 1;

/*
 Mostrar el cliente que ha realizado la reserva más larga (mayor diferencia entre la fecha de entrega y recogida).*/

SELECT *
FROM clientes
WHERE id IN (
        SELECT
            MAX(
                DATEDIFF(fecha_recogida, fecha_entrega)
            )
        FROM reservas
        GROUP BY cliente_id
    );

/*
 Encontrar las nacionalidades con la mayor cantidad de clientes registrados.*/

SELECT
    n.id,
    n.nacionalidad,
    COUNT(c.id) AS clientes_registrados
FROM nacionalidad n
    INNER JOIN clientes c ON c.id_nacionalidad = n.id
GROUP BY n.id;

/*
 Encontrar los clientes que tienen el mismo nombre o apellido.*/

SELECT
    cli1.nombre,
    cli1.apellido,
    cli2.nombre,
    cli2.apellido
FROM clientes cli1
    INNER JOIN clientes cli2 ON cli1.nombre = cli2.nombre OR cli1.apellido = cli2.apellido
WHERE cli1.id <> cli2.id;

/*
 Mostrar los hoteles que no tienen ninguna reserva realizada.*/

SELECT *
FROM hoteles
WHERE id NOT IN (
        SELECT ha.hotel_id
        FROM habitaciones ha
            INNER JOIN reservas re ON re.habitacion_id = ha.id
    );

/*
 Obtener las habitaciones que están ocupadas actualmente (en el momento actual).*/

SELECT
    ho.nombre,
    ha.id,
    re.fecha_entrega,
    re.fecha_recogida
FROM habitaciones ha
    INNER JOIN reservas re, hoteles ho
WHERE
    ha.id = re.habitacion_id
    AND ho.id = ha.hotel_id
    AND NOW() >= re.fecha_entrega
    AND NOW() <= re.fecha_recogida;

/*
 Encontrar todos los hoteles con habitaciones disponibles para una fecha específica.*/

SELECT *
FROM hoteles
WHERE id NOT IN (
        SELECT ho.id
        FROM habitaciones ha
            INNER JOIN reservas re, hoteles ho
        WHERE
            ha.id = re.habitacion_id
            AND ho.id = ha.hotel_id
            AND NOW() >= re.fecha_entrega
            AND NOW() <= re.fecha_recogida
    );

/*
 Calcular el total de ingresos generados por cada hotel en un período de tiempo determinado.*/