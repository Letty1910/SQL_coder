create database gestion_peliculas;
use gestion_peliculas;
CREATE TABLE Pelicula (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    fecha_estreno DATE,
    duracion INT,
    sinopsis TEXT
);

CREATE TABLE Actor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_nacimiento DATE,
    nacionalidad VARCHAR(50)
);

CREATE TABLE Director (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_nacimiento DATE,
    nacionalidad VARCHAR(50)
);

CREATE TABLE Genero (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE Participacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pelicula_id INT,
    actor_id INT,
    rol VARCHAR(50),
    FOREIGN KEY (pelicula_id) REFERENCES Pelicula(id),
    FOREIGN KEY (actor_id) REFERENCES Actor(id)
);


