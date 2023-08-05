
/* 
 Autor: Mateo Álvarez Murillo
 Fecha de creación: 2023
 Este código se proporciona bajo la Licencia MIT.
 Para más información, consulta el archivo LICENSE en la raíz del repositorio. 
 */

USE dbs_hotel;


/* Dada una fecha, retorna los hoteles con habitaciones disponibles */
CREATE PROCEDURE `hoteles_con_habitaciones_disponibles`(fecha DATE)
BEGIN
DECLARE fecha_time datetime DEFAULT CAST(fecha AS DATETIME);
SELECT *
FROM hoteles
WHERE id NOT IN (
        SELECT ho.id
        FROM habitaciones ha
            INNER JOIN reservas re, hoteles ho
        WHERE
            ha.id = re.habitacion_id
            AND ho.id = ha.hotel_id
            AND fecha_time >= re.fecha_entrega
            AND fecha_time <= re.fecha_recogida
    );
END


/* Dado un id de un hotel retorna los clientes del hotel */

CREATE PROCEDURE `clientes_de_un_hotel`(id_hotel INT)
BEGIN
declare elemento INT DEFAULT(SELECT COUNT(*) FROM hoteles WHERE id=id_hotel);
IF (elemento>0)THEN
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
ELSE
SELECT 'Error al seleccionar el hotel';
END IF;
END

/* Dada una fecha de inicio y una fecha final, retorna la cantidad de dinero generada por el hotel*/


CREATE PROCEDURE `dinero_generado_hoteles`(fecha_inicio DATE, fecha_final DATE)
BEGIN
SELECT
    ho.nombre AS hotel,
    SUM(
        ha.precio * DATEDIFF(
            re.fecha_recogida,
            re.fecha_entrega
        )
    ) AS dinero_generado
FROM hoteles ho
    INNER JOIN habitaciones ha, reservas re
WHERE
    ha.id = re.habitacion_id
    AND ho.id = ha.hotel_id
    AND fecha_final >= re.fecha_entrega
    AND fecha_inicio <= re.fecha_recogida
GROUP BY ho.id;
END