
/* 
 Autor: Mateo Álvarez Murillo
 Fecha de creación: 2023
 Este código se proporciona bajo la Licencia MIT.
 Para más información, consulta el archivo LICENSE en la raíz del repositorio. 
 */

USE dbs_hotel;

CREATE TABLE reservas_editadas(
  id INT,
  fecha_entrega DATETIME,
  fecha_recogida DATETIME,
  cliente_id INT,
  habitacion_id INT,
  usuario VARCHAR(45)
);

CREATE TRIGGER reservas_BU
BEFORE UPDATE ON reservas
FOR EACH ROW
BEGIN
INSERT INTO reservas_editadas(id, fecha_entrega, fecha_recogida, cliente_id, habitacion_id, usuario)VALUES
(OLD.id, OLD.fecha_entrega, OLD.fecha_recogida, OLD.cliente_id, OLD.habitacion_id, CURRENT_USER());
END;

UPDATE reservas SET cliente_id=1 WHERE id=1;
UPDATE reservas SET cliente_id=4 WHERE id=4;


CREATE TABLE reservas_eliminadas(
  id INT,
  fecha_entrega DATETIME,
  fecha_recogida DATETIME,
  cliente_id INT,
  habitacion_id INT,
  usuario VARCHAR(45),
  fecha DATETIME
);

CREATE TRIGGER reservas_BD
BEFORE DELETE ON reservas
FOR EACH ROW
BEGIN
INSERT INTO reservas_eliminadas(id, fecha_entrega, fecha_recogida, cliente_id, habitacion_id, usuario, fecha)VALUES
(OLD.id, OLD.fecha_entrega, OLD.fecha_recogida, OLD.cliente_id, OLD.habitacion_id, CURRENT_USER(), NOW());
END;

INSERT INTO reservas(fecha_entrega, fecha_recogida, cliente_id, habitacion_id)VALUES
('2023-08-01 14:00:00', '2023-08-05 12:00:00', 1, 3);

DELETE FROM reservas WHERE id=41;