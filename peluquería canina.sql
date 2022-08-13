CREATE DATABASE Lucas_Moyano;

CREATE TABLE `lucas_moyano`.`dueño` (
DNI INT PRIMARY KEY, 
Nombre VARCHAR(255),
Apellido VARCHAR(255),
Telefono INT,
Direccion VARCHAR(255)

);
CREATE TABLE `lucas_moyano`.`Perro` (
ID_PERRO INT PRIMARY KEY, 
Nombre VARCHAR(255),
FECHA_DE_NACIMIENTO date,
SEXO VARCHAR(1),
DNI_DUEÑO INT, 
FOREIGN KEY (DNI_DUEÑO) REFERENCES dueño(DNI)

);
CREATE TABLE `lucas_moyano`.`Historial` (
ID_Historial INT PRIMARY KEY, 
FECHA date,
Perro int,
Descripcion  VARCHAR(255),
Monto INT, 
FOREIGN KEY (Perro) REFERENCES Perro(ID_PERRO)

);
USE lucas_moyano ;
SELECT Nombre, FECHA
FROM Historial
WHERE FECHA BETWEEN '01/01/2022' AND '31/12/2022'
;

USE lucas_moyano ;
SELECT SUM(Monto)
FROM Historial
WHERE FECHA BETWEEN '01/07/2022' AND '31/07/2022'

;
USE lucas_moyano ;
INSERT INTO historial (`ID_Historial`, `Perro`, `Descripcion`, `Monto`) 
VALUES ('1', '10', 'Firulais vacunacion', '2500');





