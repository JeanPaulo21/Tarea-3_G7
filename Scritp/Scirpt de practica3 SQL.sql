-- Script de bases de datos

Create database Practica3;
use Practica3;

-- Crear tabla Autores
CREATE TABLE Autores (
    AutorId INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    FechaNac DATE
);

-- Crear tabla Libros
CREATE TABLE Libros (
    LibroId INT PRIMARY KEY,
    Titulo VARCHAR(255),
    AutorId INT FOREIGN KEY REFERENCES Autores(AutorId),
    CategoriaId INT,
    FechaPub DATE,
    ISBN VARCHAR(20)
);

CREATE TABLE Categorias (
    CategoriaId INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(500),
    FechaCreacion DATETIME DEFAULT GETDATE(),
    UltimaModificacion DATETIME,
    EstadoActivo BIT DEFAULT 1,
    OrdenVisualizacion INT,
);