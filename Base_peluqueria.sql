SHOW DATABASES;
USE bd_peluqueria_canina;
SHOW TABLES;
CREATE TABLE Dueno (
DNI INT NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  telefono INT NOT NULL,
  direccion VARCHAR(200) NOT NULL,
  PRIMARY KEY (DNI)
 );
 
 CREATE TABLE Perro (
  idperro INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  fecha_nac DATE NOT NULL,
  sexo VARCHAR(45) NOT NULL,
  dueno_DNI INT NOT NULL,
   PRIMARY KEY (idperro),
   FOREIGN KEY (dueno_DNI) REFERENCES Dueno(DNI));
   
   CREATE TABLE Historial (
  idhistorial INT NOT NULL,
  fecha DATETIME NOT NULL,
  descripcion VARCHAR(200) NOT NULL,
  monto INT NOT NULL,
  perro_idperro INT NOT NULL,
  PRIMARY KEY (idhistorial),
  FOREIGN KEY (perro_idperro)REFERENCES Perro (idperro));
  
  #Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
  
  SHOW TABLES;
  
  SELECT * FROM Perro;
  
  INSERT INTO Dueno (DNI, apellido, telefono, direccion) VALUE (32265585, "Pedro", "Sauce", 15232364, "San Jose 3455");
  
  INSERT INTO Perro (idperro, nombre, fecha_nac, sexo, dueno_DNI) VALUE (1, "Pirurela", "2010-10-3", "Hembra", 32265585);  
  
   #Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro
   
   ALTER TABLE Dueno ADD  nombre VARCHAR(45) NOT NULL;
   
   SELECT * FROM Dueno WHERE DNI = 32265585;
   
  UPDATE `bd_peluqueria_canina`.`Dueno` SET `nombre` = 'Pedro' WHERE (`DNI` = '32265585');
   
   SELECT * FROM Perro, Dueno WHERE Dueno.nombre = "Pedro" AND Dueno.DNI = Perro.dueno_DNI;
   
   


  