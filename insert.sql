-- Insertar datos ficticios en la tabla Artista
INSERT INTO Artista (idArtista, nombre, biografia) VALUES
    (1, 'Queen', 'Una legendaria banda de rock británica'),
    (2, 'Taylor Swift', 'Cantante y compositora estadounidense de pop'),
    (3, 'The Beatles', 'Una influyente banda británica de rock'),
    (4, 'Michael Jackson', 'El Rey del Pop y una de las figuras más famosas de la música'),
    (5, 'Madonna', 'Reina del Pop y una de las artistas más exitosas de todos los tiempos'),
    (6, 'Elton John', 'Cantante, compositor y pianista británico'),
    (7, 'Bob Marley', 'Legendario músico de reggae'),
    (8, 'Adele', 'Cantante y compositora británica'),
    (9, 'Eminem', 'Rapero, productor discográfico y actor estadounidense'),
    (10, 'Beyoncé', 'Cantante, actriz y productora musical estadounidense'),
    (11, 'Coldplay', 'Banda británica de rock alternativo'),
    (12, 'Ed Sheeran', 'Cantante y compositor británico');

-- Insertar datos ficticios en la tabla Álbum
INSERT INTO Album (idAlbum, titulo, fechaLanzamiento, idArtista) VALUES
    (1, 'Greatest Hits', '1981-10-26', 1),
    (2, '1989', '2014-10-27', 2),
    (3, 'Abbey Road', '1969-09-26', 3),
    (4, 'Thriller', '1982-11-30', 4),
    (5, 'Like a Virgin', '1984-11-12', 5),
    (6, 'Goodbye Yellow Brick Road', '1973-10-05', 6),
    (7, 'Legend', '1984-05-08', 7),
    (8, '21', '2011-01-24', 8),
    (9, 'The Marshall Mathers LP', '2000-05-23', 9),
    (10, 'Lemonade', '2016-04-23', 10),
    (11, 'A Rush of Blood to the Head', '2002-08-26', 11),
    (12, '÷ (Divide)', '2017-03-03', 12);

-- Insertar datos ficticios en la tabla Cancion
INSERT INTO Cancion (idCancion, titulo, duracion, idAlbum, rutaArchivo, rutaImagen) VALUES
    (1, 'Bohemian Rhapsody', 367, 1, '/ruta/bohemian_rhapsody.mp3', '/ruta/bohemian_rhapsody.jpg'),
    (2, 'Shake It Off', 219, 2, '/ruta/shake_it_off.mp3', '/ruta/shake_it_off.jpg'),
    (3, 'Let It Be', 243, 3, '/ruta/let_it_be.mp3', '/ruta/let_it_be.jpg'),
    (4, 'Billie Jean', 294, 4, '/ruta/billie_jean.mp3', '/ruta/billie_jean.jpg'),
    (5, 'Material Girl', 225, 5, '/ruta/material_girl.mp3', '/ruta/material_girl.jpg'),
    (6, 'Rocket Man', 295, 6, '/ruta/rocket_man.mp3', '/ruta/rocket_man.jpg'),
    (7, 'No Woman, No Cry', 237, 7, '/ruta/no_woman_no_cry.mp3', '/ruta/no_woman_no_cry.jpg'),
    (8, 'Rolling in the Deep', 228, 8, '/ruta/rolling_in_the_deep.mp3', '/ruta/rolling_in_the_deep.jpg'),
    (9, 'Stan', 396, 9, '/ruta/stan.mp3', '/ruta/stan.jpg'),
    (10, 'Formation', 234, 10, '/ruta/formation.mp3', '/ruta/formation.jpg'),
    (11, 'Fix You', 297, 11, '/ruta/fix_you.mp3', '/ruta/fix_you.jpg'),
    (12, 'Shape of You', 234, 12, '/ruta/shape_of_you.mp3', '/ruta/shape_of_you.jpg');

-- Insertar datos ficticios en la tabla Usuario
INSERT INTO Usuario (idUsuario, nombreUsuario, correo, contraseña, preferencias) VALUES
    (1, 'Usuario1', 'usuario1@example.com', 'contrasena1', 'Rock'),
    (2, 'Usuario2', 'usuario2@example.com', 'contrasena2', 'Pop'),
    (3, 'Usuario3', 'usuario3@example.com', 'contrasena3', 'Electrónica'),
    (4, 'Usuario4', 'usuario4@example.com', 'contrasena4', 'Indie'),
    (5, 'Usuario5', 'usuario5@example.com', 'contrasena5', 'Hip Hop'),
    (6, 'Usuario6', 'usuario6@example.com', 'contrasena6', 'Reggae'),
    (7, 'Usuario7', 'usuario7@example.com', 'contrasena7', 'Jazz'),
    (8, 'Usuario8', 'usuario8@example.com', 'contrasena8', 'Clásica'),
    (9, 'Usuario9', 'usuario9@example.com', 'contrasena9', 'R&B'),
    (10, 'Usuario10', 'usuario10@example.com', 'contrasena10', 'Country'),
    (11, 'Usuario11', 'usuario11@example.com', 'contrasena11', 'Metal'),
    (12, 'Usuario12', 'usuario12@example.com', 'contrasena12', 'Funk');


-- Insertar datos ficticios en la tabla ListaDeReproduccion
INSERT INTO ListaDeReproduccion (idListaDeReproduccion, titulo, idUsuario) VALUES
    (1, 'Lista de Rock', 1),
    (2, 'Lista de Pop', 2),
    (3, 'Lista de Reggae', 3),
    (4, 'Lista de Indie', 4),
    (5, 'Lista de Hip Hop', 5),
    (6, 'Lista de Jazz', 6),
    (7, 'Lista de Electrónica', 7),
    (8, 'Lista de Clásica', 8),
    (9, 'Lista de R&B', 9),
    (10, 'Lista de Country', 10),
    (11, 'Lista de Metal', 11),
    (12, 'Lista de Funk', 12);


-- Insertar datos ficticios en la tabla ListaDeReproduccion_Cancion
INSERT INTO ListaDeReproduccion_Cancion (idListaDeReproduccion, idCancion, ordenEnLista) VALUES
    (1, 1, 1),
    (1, 2, 2),
    (2, 2, 1),
    (3, 3, 1),
    (3, 4, 2),
    (4, 5, 1),
    (4, 6, 2),
    (5, 7, 1),
    (5, 8, 2),
    (6, 9, 1),
    (6, 10, 2),
    (7, 11, 1),
    (7, 12, 2);

-- Insertar datos ficticios en la tabla Genero
INSERT INTO Genero (idGenero, nombre) VALUES
    (1, 'Rock'),
    (2, 'Pop'),
    (3, 'Reggae'),
    (4, 'Indie'),
    (5, 'Hip Hop'),
    (6, 'Jazz'),
    (7, 'Electrónica'),
    (8, 'Clásica'),
    (9, 'R&B'),
    (10, 'Country'),
    (11, 'Metal'),
    (12, 'Funk');


-- Insertar datos ficticios en la tabla Cancion_Genero
INSERT INTO Cancion_Genero (idCancion, idGenero) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12);


-- Insertar datos ficticios en la tabla Comentario
INSERT INTO Comentario (idComentario, idUsuario, idCancion, texto, timestamp) VALUES
    (1, 1, 1, '¡Esta canción es asombrosa!', CURRENT_TIMESTAMP),
    (2, 2, 2, 'Me encanta este álbum', CURRENT_TIMESTAMP),
    (3, 3, 3, 'Gran letra en esta canción', CURRENT_TIMESTAMP),
    (4, 4, 4, 'Clásico atemporal', CURRENT_TIMESTAMP),
    (5, 5, 5, '¡Ritmo increíble!', CURRENT_TIMESTAMP),
    (6, 6, 6, 'Una de mis canciones favoritas', CURRENT_TIMESTAMP),
    (7, 7, 7, 'Sensacional solo de guitarra', CURRENT_TIMESTAMP),
    (8, 8, 8, 'Emocionante interpretación vocal', CURRENT_TIMESTAMP),
    (9, 9, 9, 'Letras profundas y significativas', CURRENT_TIMESTAMP),
    (10, 10, 10, 'Melodía pegajosa', CURRENT_TIMESTAMP),
    (11, 11, 11, 'Riffs de guitarra impresionantes', CURRENT_TIMESTAMP),
    (12, 12, 12, 'Groove funky contagioso', CURRENT_TIMESTAMP);


-- Insertar datos ficticios en la tabla Calificacion
INSERT INTO Calificacion (idCalificacion, idUsuario, idCancion, valor, timestamp) VALUES
    (1, 1, 1, 5, CURRENT_TIMESTAMP),
    (2, 2, 2, 4, CURRENT_TIMESTAMP),
    (3, 3, 3, 4, CURRENT_TIMESTAMP),
    (4, 4, 4, 5, CURRENT_TIMESTAMP),
    (5, 5, 5, 3, CURRENT_TIMESTAMP),
    (6, 6, 6, 5, CURRENT_TIMESTAMP),
    (7, 7, 7, 4, CURRENT_TIMESTAMP),
    (8, 8, 8, 5, CURRENT_TIMESTAMP),
    (9, 9, 9, 4, CURRENT_TIMESTAMP),
    (10, 10, 10, 5, CURRENT_TIMESTAMP),
    (11, 11, 11, 4, CURRENT_TIMESTAMP),
    (12, 12, 12, 5, CURRENT_TIMESTAMP);


-- Insertar datos ficticios en la tabla Colaborador_ListaDeReproduccion
INSERT INTO Colaborador_ListaDeReproduccion (idListaDeReproduccion, idUsuario) VALUES
    (1, 2),
    (2, 1),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12);


-- Insertar datos ficticios en la tabla HistorialDeReproduccion
    INSERT INTO HistorialDeReproduccion (idHistorial, idUsuario, idCancion, timestamp) VALUES
        (1, 1, 1, CURRENT_TIMESTAMP),
        (2, 2, 2, CURRENT_TIMESTAMP),
    (3, 3, 3, CURRENT_TIMESTAMP),
    (4, 4, 4, CURRENT_TIMESTAMP),
    (5, 5, 5, CURRENT_TIMESTAMP),
    (6, 6, 6, CURRENT_TIMESTAMP),
    (7, 7, 7, CURRENT_TIMESTAMP),
    (8, 8, 8, CURRENT_TIMESTAMP),
    (9, 9, 9, CURRENT_TIMESTAMP),
    (10, 10, 10, CURRENT_TIMESTAMP),
    (11, 11, 11, CURRENT_TIMESTAMP),
    (12, 12, 12, CURRENT_TIMESTAMP);


-- Insertar datos ficticios en la tabla Suscripcion
INSERT INTO Suscripcion (idSuscripcion, idUsuario, tipoSuscripcion, fechaInicio, fechaFin) VALUES
    (1, 1, 'Premium', '2023-01-01', '2023-12-31'),
    (2, 2, 'Gratis', '2023-02-01', '2023-02-28'),
    (3, 3, 'Premium', '2023-03-01', '2023-04-30'),
    (4, 4, 'Gratis', '2023-04-01', '2023-04-30'),
    (5, 5, 'Premium', '2023-05-01', '2023-06-30'),
    (6, 6, 'Gratis', '2023-06-01', '2023-06-30'),
    (7, 7, 'Premium', '2023-07-01', '2023-08-31'),
    (8, 8, 'Gratis', '2023-08-01', '2023-08-31'),
    (9, 9, 'Premium', '2023-09-01', '2023-10-31'),
    (10, 10, 'Gratis', '2023-10-01', '2023-10-31'),
    (11, 11, 'Premium', '2023-11-01', '2023-12-31'),
    (12, 12, 'Gratis', '2023-12-01', '2023-12-31');


-- Insertar datos ficticios en la tabla HistorialDePagos
INSERT INTO HistorialDePagos (idPago, idSuscripcion, monto, fechaPago) VALUES
    (1, 1, 10.99, '2023-01-15'),
    (2, 2, 0, '2023-02-15'),
    (3, 3, 10.99, '2023-03-15'),
    (4, 4, 0, '2023-04-15'),
    (5, 5, 10.99, '2023-05-15'),
    (6, 6, 0, '2023-06-15'),
    (7, 7, 10.99, '2023-07-15'),
    (8, 8, 0, '2023-08-15'),
    (9, 9, 10.99, '2023-09-15'),
    (10, 10, 0, '2023-10-15'),
    (11, 11, 10.99, '2023-11-15'),
    (12, 12, 0, '2023-12-15');

-- Insertar datos ficticios en la tabla ArtistaFavorito
INSERT INTO ArtistaFavorito (idUsuario, idArtista) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12);


-- Insertar datos ficticios en la tabla CancionFavorita
INSERT INTO CancionFavorita (idUsuario, idCancion) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12);


