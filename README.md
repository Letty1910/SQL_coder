# SQL_coder

Primera Entrega
Temática:Gestión de Películas
La base de datos está diseñada para almacenar y gestionar información relacionada con películas, incluyendo detalles de las películas, actores, directores, géneros y participaciones en películas. Su objetivo es proporcionar una estructura organizada para facilitar la consulta y la gestión de datos de películas.
2.Diagramas de Entidad-Relación
Entidades: Película, Actor, Director, Género, Participación
Relaciones:
Una Película tiene muchos Actores.
Un Director dirige una Película.
Una Película pertenece a uno o más Géneros.
Una Participación registra la relación entre un Actor y una Película.


3. Listado de las Tablas
Tabla: Pelicula
Descripción: Almacena información de las películas.
Campos:
id: INT, Clave primaria
titulo: VARCHAR(100)
fecha_estreno: DATE
duracion: INT (minutos)
sinopsis: TEXT
Tabla: Actor
Descripción: Almacena información de los actores.
Campos:
id: INT, Clave primaria
nombre: VARCHAR(50)
apellido: VARCHAR(50)
fecha_nacimiento: DATE
nacionalidad: VARCHAR(50)
Tabla: Director
Descripción: Almacena información de los directores.
Campos:
id: INT, Clave primaria
nombre: VARCHAR(50)
apellido: VARCHAR(50)
fecha_nacimiento: DATE
nacionalidad: VARCHAR(50)
Tabla: Genero
Descripción: Almacena información de los géneros de las películas.
Campos:
id: INT, Clave primaria
nombre: VARCHAR(50)
Tabla: Participacion
Descripción: Almacena las participaciones de actores en películas.
Campos:
id: INT, Clave primaria
pelicula_id: INT, Clave foránea
actor_id: INT, Clave foránea
rol: VARCHAR(50)
4. Archivo .sql

CREATE DATABASE gestion_peliculas;

USE gestion_peliculas;

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

