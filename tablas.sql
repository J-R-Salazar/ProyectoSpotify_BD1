-- Crear la tabla Artista
CREATE TABLE Artista (
    idArtista INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    biografia TEXT
);

-- Crear la tabla Álbum
CREATE TABLE Album (
    idAlbum INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    fechaLanzamiento DATE,
    idArtista INT,
    FOREIGN KEY (idArtista) REFERENCES Artista(idArtista)
);

-- Crear la tabla Cancion
	CREATE TABLE Cancion (
	    idCancion INT PRIMARY KEY,
	    titulo VARCHAR(255) NOT NULL,
	    duracion INT,
	    idAlbum INT,
	    rutaArchivo VARCHAR(255) NOT NULL,
	    rutaImagen VARCHAR(255) NOT NULL,
	    FOREIGN KEY (idAlbum) REFERENCES Album(idAlbum)
	);

-- Crear la tabla Usuario
CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY,
    nombreUsuario VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    f VARCHAR(255) NOT NULL
);

-- Crear la tabla ListaDeReproduccion
CREATE TABLE ListaDeReproduccion (
    idListaDeReproduccion INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    idUsuario INT,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

-- Crear la tabla ListaDeReproduccion_Cancion (relación muchos a muchos entre ListaDeReproduccion y Cancion)
CREATE TABLE ListaDeReproduccion_Cancion (
    idListaDeReproduccion INT,
    idCancion INT,
    ordenEnLista INT,
    PRIMARY KEY (idListaDeReproduccion, idCancion),
    FOREIGN KEY (idListaDeReproduccion) REFERENCES ListaDeReproduccion(idListaDeReproduccion),
    FOREIGN KEY (idCancion) REFERENCES Cancion(idCancion)
);

-- Crear la tabla Género
CREATE TABLE Genero (
    idGenero INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Crear la tabla Cancion_Genero
CREATE TABLE Cancion_Genero (
    idCancion INT,
    idGenero INT,
    PRIMARY KEY (idCancion, idGenero),
    FOREIGN KEY (idCancion) REFERENCES Cancion(idCancion),
    FOREIGN KEY (idGenero) REFERENCES Genero(idGenero)
);

-- Crear la tabla Comentario
CREATE TABLE Comentario (
    idComentario INT PRIMARY KEY,
    idUsuario INT,
    idCancion INT,
    texto TEXT,
    timestamp TIMESTAMP,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idCancion) REFERENCES Cancion(idCancion)
);

-- Crear la tabla Calificacion
CREATE TABLE Calificacion (
    idCalificacion INT PRIMARY KEY,
    idUsuario INT,
    idCancion INT,
    valor INT,
    timestamp TIMESTAMP,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idCancion) REFERENCES Cancion(idCancion)
);

-- Crear la tabla Colaborador_ListaDeReproduccion
CREATE TABLE Colaborador_ListaDeReproduccion (
    idListaDeReproduccion INT,
    idUsuario INT,
    PRIMARY KEY (idListaDeReproduccion, idUsuario),
    FOREIGN KEY (idListaDeReproduccion) REFERENCES ListaDeReproduccion(idListaDeReproduccion),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

-- Crear la tabla HistorialDeReproduccion
CREATE TABLE HistorialDeReproduccion (
    idHistorial INT PRIMARY KEY,
    idUsuario INT,
    idCancion INT,
    timestamp TIMESTAMP,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idCancion) REFERENCES Cancion(idCancion)
);

-- Añadir la columna preferencias a la tabla Usuario
ALTER TABLE Usuario ADD COLUMN preferencias TEXT;


CREATE TABLE Suscripcion (
    idSuscripcion INT PRIMARY KEY,
    idUsuario INT,
    tipoSuscripcion VARCHAR(50),
    fechaInicio DATE,
    fechaFin DATE,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

CREATE TABLE HistorialDePagos (
    idPago INT PRIMARY KEY,
    idSuscripcion INT,
    monto DECIMAL(10, 2),
    fechaPago DATE,
    FOREIGN KEY (idSuscripcion) REFERENCES Suscripcion(idSuscripcion)
);

CREATE TABLE ArtistaFavorito (
    idUsuario INT,
    idArtista INT,
    PRIMARY KEY (idUsuario, idArtista),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idArtista) REFERENCES Artista(idArtista)
);

CREATE TABLE CancionFavorita (
    idUsuario INT,
    idCancion INT,
    PRIMARY KEY (idUsuario, idCancion),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idCancion) REFERENCES Cancion(idCancion)
);

