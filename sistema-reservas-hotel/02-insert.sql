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