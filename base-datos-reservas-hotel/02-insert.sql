/* 
 Autor: Mateo Álvarez Murillo
 Fecha de creación: 2023
 Este código se proporciona bajo la Licencia MIT.
 Para más información, consulta el archivo LICENSE en la raíz del repositorio. 
 */

USE dbs_hotel;

INSERT INTO
    nacionalidad(nacionalidad)
VALUES ('Colombia'), ('Argentina'), ('Brasil'), ('Chile'), ('México'), ('Perú'), ('Ecuador'), ('Uruguay'), ('Venezuela'), ('Paraguay');

INSERT INTO
    clientes(
        nombre,
        apellido,
        email,
        telefono,
        id_nacionalidad
    )
VALUES (
        'Mateo',
        'Alvarez',
        'correofalso1@gmail.com',
        '1234567689',
        1
    ), (
        'Sofía',
        'Gómez',
        'correofalso2@gmail.com',
        '9876543210',
        2
    ), (
        'Diego',
        'López',
        'correofalso3@gmail.com',
        '555444333',
        3
    ), (
        'Camila',
        'Martínez',
        'correofalso4@gmail.com',
        '111222333',
        4
    ), (
        'Juan',
        'Ramírez',
        'correofalso5@gmail.com',
        '777888999',
        5
    ), (
        'Valentina',
        'Gutiérrez',
        'correofalso6@gmail.com',
        '333222111',
        6
    ), (
        'Sebastián',
        'Castillo',
        'correofalso7@gmail.com',
        '444555666',
        7
    ), (
        'Isabella',
        'Hernández',
        'correofalso8@gmail.com',
        '666777888',
        8
    ), (
        'Lucas',
        'Díaz',
        'correofalso9@gmail.com',
        '999888777',
        9
    ), (
        'Gabriela',
        'Torres',
        'correofalso10@gmail.com',
        '777666555',
        10
    ), (
        'Emilio',
        'Silva',
        'correofalso11@gmail.com',
        '222333444',
        1
    ), (
        'Valeria',
        'Rojas',
        'correofalso12@gmail.com',
        '555666777',
        2
    ), (
        'Benjamín',
        'Vargas',
        'correofalso13@gmail.com',
        '111000999',
        3
    ), (
        'Renata',
        'Molina',
        'correofalso14@gmail.com',
        '888999000',
        4
    ), (
        'Joaquín',
        'Pérez',
        'correofalso15@gmail.com',
        '444333222',
        5
    ), (
        'Antonella',
        'Navarro',
        'correofalso16@gmail.com',
        '999000111',
        6
    ), (
        'Ángel',
        'Escobar',
        'correofalso17@gmail.com',
        '666555444',
        7
    ), (
        'Catalina',
        'Ríos',
        'correofalso18@gmail.com',
        '111222333',
        8
    ), (
        'Maximiliano',
        'Mendoza',
        'correofalso19@gmail.com',
        '888777666',
        9
    ), (
        'Florencia',
        'Ortega',
        'correofalso20@gmail.com',
        '222333444',
        10
    );

INSERT INTO
    hoteles (
        nombre,
        calificacion,
        ciudad,
        email,
        sitio_web,
        pais
    )
VALUES (
        'Hotel Ritz',
        '5',
        'Buenos Aires',
        'ritz@ejemplo.com',
        'www.ritz.com',
        'Argentina'
    ), (
        'Copacabana Palace',
        '5',
        'Río de Janeiro',
        'copacabana@ejemplo.com',
        'www.copacabana.com',
        'Brasil'
    ), (
        'San Alfonso del Mar',
        '4',
        'Valparaíso',
        'sanalfonso@ejemplo.com',
        'www.sanalfonso.com',
        'Chile'
    ), (
        'Hotel Xcaret México',
        '5',
        'Playa del Carmen',
        'xcaret@ejemplo.com',
        'www.xcaret.com',
        'México'
    ), (
        'Belmond Hotel Monasterio',
        '5',
        'Cusco',
        'monasterio@ejemplo.com',
        'www.monasterio.com',
        'Perú'
    ), (
        'Hilton Colon Quito',
        '4',
        'Quito',
        'hiltonquito@ejemplo.com',
        'www.hiltonquito.com',
        'Ecuador'
    ), (
        'Conrad Punta del Este',
        '5',
        'Punta del Este',
        'conradpunta@ejemplo.com',
        'www.conradpunta.com',
        'Uruguay'
    ), (
        'Waldorf Caracas',
        '4',
        'Caracas',
        'waldorfcaracas@ejemplo.com',
        'www.waldorfcaracas.com',
        'Venezuela'
    ), (
        'Sheraton Santa Cruz',
        '4',
        'Santa Cruz de la Sierra',
        'sheraton@ejemplo.com',
        'www.sheratonsantacruz.com',
        'Bolivia'
    ), (
        'Hotel Yacht y Golf Club Paraguayo',
        '5',
        'Asunción',
        'yachtgolf@ejemplo.com',
        'www.yachtgolf.com',
        'Paraguay'
    );

INSERT INTO
    habitaciones (
        tipo,
        capacidad,
        precio,
        hotel_id
    )
VALUES ('individual', 1, 100, 1), ('individual', 1, 120, 1), ('individual', 1, 90, 2), ('individual', 1, 110, 2), ('doble', 2, 150, 1), ('doble', 2, 160, 1), ('doble', 2, 140, 3), ('doble', 2, 130, 3), ('suite', 3, 250, 1), ('suite', 3, 280, 1), ('suite', 3, 220, 4), ('suite', 3, 240, 4), ('individual', 1, 95, 5), ('individual', 1, 100, 5), ('doble', 2, 160, 6), ('doble', 2, 170, 6), ('doble', 2, 145, 7), ('doble', 2, 155, 7), ('suite', 3, 270, 8), ('suite', 3, 290, 8), ('individual', 1, 85, 9), ('individual', 1, 90, 9), ('doble', 2, 150, 10), ('doble', 2, 160, 10), ('suite', 3, 260, 2), ('doble', 2, 150, 2), ('individual', 1, 95, 3), ('doble', 2, 170, 3), ('suite', 3, 280, 4), ('doble', 2, 160, 4), ('suite', 3, 300, 5), ('doble', 2, 180, 5), ('individual', 1, 100, 6), ('doble', 2, 180, 6), ('individual', 1, 90, 7), ('doble', 2, 160, 7), ('suite', 3, 290, 8), ('doble', 2, 170, 8), ('suite', 3, 320, 9), ('doble', 2, 180, 9), ('suite', 3, 300, 9), ('individual', 1, 95, 10), ('doble', 2, 160, 10), ('suite', 3, 280, 1), ('doble', 2, 150, 1), ('individual', 1, 100, 2), ('doble', 2, 170, 2), ('suite', 3, 290, 3), ('doble', 2, 160, 3);

INSERT INTO
    reservas (
        fecha_entrega,
        fecha_recogida,
        cliente_id,
        habitacion_id
    )
VALUES (
        '2023-08-01 14:00:00',
        '2023-08-05 12:00:00',
        1,
        3
    ), (
        '2023-08-02 15:30:00',
        '2023-08-07 10:00:00',
        2,
        8
    ), (
        '2023-08-03 12:00:00',
        '2023-08-06 11:00:00',
        3,
        12
    ), (
        '2023-08-04 16:00:00',
        '2023-08-08 13:00:00',
        4,
        17
    ), (
        '2023-08-05 10:00:00',
        '2023-08-09 09:00:00',
        5,
        22
    ), (
        '2023-08-06 14:30:00',
        '2023-08-10 12:30:00',
        6,
        26
    ), (
        '2023-08-07 11:00:00',
        '2023-08-11 10:00:00',
        7,
        31
    ), (
        '2023-08-08 12:30:00',
        '2023-08-12 09:30:00',
        8,
        36
    ), (
        '2023-08-09 16:00:00',
        '2023-08-13 15:00:00',
        9,
        39
    ), (
        '2023-08-10 09:00:00',
        '2023-08-14 08:00:00',
        10,
        42
    ), (
        '2023-08-11 13:00:00',
        '2023-08-15 11:00:00',
        11,
        5
    ), (
        '2023-08-12 15:30:00',
        '2023-08-16 10:00:00',
        12,
        10
    ), (
        '2023-08-13 12:00:00',
        '2023-08-16 11:00:00',
        13,
        15
    ), (
        '2023-08-14 16:00:00',
        '2023-08-18 13:00:00',
        14,
        20
    ), (
        '2023-08-15 10:00:00',
        '2023-08-19 09:00:00',
        15,
        25
    ), (
        '2023-08-16 14:30:00',
        '2023-08-20 12:30:00',
        16,
        30
    ), (
        '2023-08-17 11:00:00',
        '2023-08-21 10:00:00',
        17,
        35
    ), (
        '2023-08-18 12:30:00',
        '2023-08-22 09:30:00',
        18,
        40
    ), (
        '2023-08-19 16:00:00',
        '2023-08-23 15:00:00',
        19,
        45
    ), (
        '2023-08-20 09:00:00',
        '2023-08-24 08:00:00',
        20,
        48
    ), (
        '2023-08-21 13:00:00',
        '2023-08-25 11:00:00',
        1,
        2
    ), (
        '2023-08-22 15:30:00',
        '2023-08-26 10:00:00',
        2,
        9
    ), (
        '2023-08-23 12:00:00',
        '2023-08-26 11:00:00',
        3,
        13
    ), (
        '2023-08-24 16:00:00',
        '2023-08-28 13:00:00',
        4,
        18
    ), (
        '2023-08-25 10:00:00',
        '2023-08-29 09:00:00',
        5,
        23
    ), (
        '2023-08-26 14:30:00',
        '2023-08-30 12:30:00',
        6,
        27
    ), (
        '2023-08-27 11:00:00',
        '2023-08-31 10:00:00',
        7,
        32
    ), (
        '2023-08-28 12:30:00',
        '2023-09-01 09:30:00',
        8,
        37
    ), (
        '2023-08-29 16:00:00',
        '2023-09-02 15:00:00',
        9,
        40
    ), (
        '2023-08-30 09:00:00',
        '2023-09-03 08:00:00',
        10,
        43
    ), (
        '2023-08-31 13:00:00',
        '2023-09-04 11:00:00',
        11,
        6
    ), (
        '2023-09-01 15:30:00',
        '2023-09-05 10:00:00',
        12,
        11
    ), (
        '2023-09-02 12:00:00',
        '2023-09-05 11:00:00',
        13,
        16
    ), (
        '2023-09-03 16:00:00',
        '2023-09-07 13:00:00',
        14,
        21
    ), (
        '2023-09-04 10:00:00',
        '2023-09-08 09:00:00',
        15,
        26
    ), (
        '2023-09-05 14:30:00',
        '2023-09-09 12:30:00',
        16,
        31
    ), (
        '2023-09-06 11:00:00',
        '2023-09-10 10:00:00',
        17,
        36
    ), (
        '2023-09-07 12:30:00',
        '2023-09-11 09:30:00',
        18,
        41
    ), (
        '2023-09-08 16:00:00',
        '2023-09-12 15:00:00',
        19,
        44
    ), (
        '2023-09-09 09:00:00',
        '2023-09-13 08:00:00',
        20,
        47
    );