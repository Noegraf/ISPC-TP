/*----------------*/
/*Maira Gonzalez*/
/*TSDWAS ISPC*/

/*---------------------------------------*/
/*creacion base de datos */
/*---------------------------------------*/
CREATE DATABASE tsdwad_maira;

/*---------------------------------------*/
/*seleccion de la base de datos */
/*---------------------------------------*/
USE tsdwad_maira;

/*---------------------------------------*/
/*creacion de tabla Dueno*/
/*---------------------------------------*/
CREATE TABLE `tsdwad_maira`.`Dueno` 
( `DNI` INT(8) NOT NULL ,
 `Nombre` VARCHAR(10) NOT NULL ,
  `Apellido` VARCHAR(20) NOT NULL ,
   `Telefono` VARCHAR(10) NOT NULL ,
    `Direccion` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`DNI`)
    ) ENGINE = InnoDB;
/*---------------------------------------*/
/*consulta que enlista todo los dueños cargados*/
/*---------------------------------------*/
SELECT * FROM Dueno;






/*---------------------------------------*/
/*creacion de tabla Perro */
/*---------------------------------------*/
CREATE TABLE `tsdwad_maira`.`Perro`
 ( `ID_Perro` INT NOT NULL AUTO_INCREMENT ,
  `Nombre` VARCHAR(65) NOT NULL ,
   `Fecha_nac` DATE NOT NULL DEFAULT '2022-08-11' ,
    `Sexo` VARCHAR(65) NOT NULL DEFAULT 'Hembra' ,
     `DNI_dueno` INT(8) NOT NULL ,
      PRIMARY KEY (`ID_Perro`),
      FOREIGN KEY (`DNI_Dueno`) REFERENCES `Dueno` (`DNI`)
      ) ENGINE = InnoDB;
/*---------------------------------------*/
/*consulta que enlista todo los perros cargados*/
/*---------------------------------------*/
SELECT * FROM Perro;



/*---------------------------------------*/
/*creacion de tabla Historial*/
/*---------------------------------------*/
CREATE TABLE `tsdwad_maira`.`Historial`
 ( `ID_Historial` INT NOT NULL AUTO_INCREMENT ,
  `Fecha` DATE NOT NULL DEFAULT '2022-11-08' ,
   `Perro` VARCHAR(65) NOT NULL ,
    `Descripcion` VARCHAR(80) NOT NULL ,
     `Monto` FLOAT(5) NOT NULL ,
      PRIMARY KEY (`ID_Historial`), 
      FOREIGN KEY (`Perro`) REFERENCES `Perro` (`ID_Perro`)
      ) ENGINE = InnoDB;
/*---------------------------------------*/
/*consulta que enlista todos los historiales cargados*/
/*---------------------------------------*/
SELECT * FROM Historial;



/*-----------------------------------------------*/
/*Carga datos Dueno*/
/*-----------------------------------------------*/
INSERT INTO `Dueno` 
(`DNI`,
 `Nombre`,
`Apellido`,
`Telefono`,
`Direccion`)
VALUES 
('9564812',
'German',
'Lopez',
'3515642314',
'Maestro vidal 1152')

INSERT INTO `Dueno`
 (`DNI`, `Nombre`,
  `Apellido`,
   `Telefono`,
    `Direccion`)
     VALUES 
     ('22654897',
      'Lucia',
       'Perez',
        '3514569652', 
         'Bermuda 587')


INSERT INTO `Dueno` 
(`DNI`,
 `Nombre`,
  `Apellido`,
   `Telefono`,
    `Direccion`)
     VALUES ('40561951',
      'Sara',
       'Gomez',
        '3516489514',
         'Tenerife 482')

INSERT INTO `Dueno`
 (`DNI`,
  `Nombre`,
   `Apellido`,
    `Telefono`,
     `Direccion`)
      VALUES ('21832749',
       'Adrian',
        'Toledo',
         '3516559513',
          'Bv San Juan 756')

INSERT INTO `Dueno`
 (`DNI`,
  `Nombre`,
   `Apellido`,
    `Telefono`,
     `Direccion`)
      VALUES ('23550840',
       'Pedro',
        'Garcia',
         '3513105561',
          'Jose Guardado 5541')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('41546806',
    'Pedro', 
     'Villareal', 
      '3514585564', 
       'Velez 855')


INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('25963741',
'Jose', 
'Vargas',
'3514559512',
'Duarte Quiros 3547')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('30664801',
'Noelia',
 'Pereyra',
  '3513122588',
   'Bermudas 887')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('43213892',
'Pedro',
'Lopez',
'3518559546',
'Bahamas 4457')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('37951753',
'Dario',
'Monserrat',
'3513122574',
'Belardinelli 585')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('41585455',
'Jazmin',
 'Monte10',
  '3516554995',
   'Congreso 5517')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('23123654',
 'Mabel',
  'Cuello',
   '3516795841',
    'Almirante Bronw 4115')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('36711544',
 'Florencia',
  'Miras',
   '3513554884',
    'Villa Vicencio 5584')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('43231035',
 'Mateo',
  'ortega',
   '3516449875',
    'Melincue 677')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('22564897',
 'Mario',
  'Barrionuevo',
   '3514568221',
    'Comechingones 1255')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('21394947',
 'Mario',
  'Gonzalez',
   '3514568221',
    'Comechingones 932')



/*--------------------------------------*/
/*Carga datos Perros*/
/*--------------------------------------*/
INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
  `Fecha_nac`,
   `Sexo`,
    `DNI_dueno`)
VALUES (NULL,
 '3',
  '2011-04-11',
   'Hembra',
    '9564812')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
  `Fecha_nac`,
   `Sexo`,
    `DNI_dueno`)
VALUES (NULL,
 '4',
  '2012-03-11',
   'Macho',
    '21394947')
    
INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
  `Fecha_nac`,
   `Sexo`,
    `DNI_dueno`)
     VALUES (NULL,
      '1'
       '2021-11-20',
        'Macho',
         '21832749')


INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '2',
    '2016-05-22',
    'Macho',
    '43231035')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '5',
    '2022-01-22',
    'Hembra',
    '21394947')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '6',
    '2022-03-04',
    'Macho',
    '22564897')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '7',
    '2019-10-15',
    'Macho',
    '22654897')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '8',
    '2021-02-20',
    'Hembra',
    '23123654')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '9',
    '2022-05-22',
    'Hembra',
    '40561951')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '10',
    '2016-12-01',
    'Macho',
    '41585455')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '11',
    '2022-01-31',
    'Macho',
    '25963741')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '12',
    '2021-04-10',
    'Hembra',
    '40561951')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '13',
    '2014-09-20',
    'Hembra',
    '30664801')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '14',
    '2018-04-16',
    'Macho',
    '37951753')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '15',
    '2015-10-22',
    'Hembra',
    '23550840')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '16',
    '2019-01-05',
    'Macho',
    '41546806')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '17',
    '2020-07-13',
    'Hembra',
    '36711544')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    '18',
    '2022-06-03',
    'Macho',
    '37951753')



/*-------------------------------*/
/*Carga datos Historial*/
/*-------------------------------*/

INSERT INTO `Historial`
 (`ID_Historial`,
  `Fecha`,
   `Perro`,
    `Descripcion`,
     `Monto`)
    VALUES
    (NULL,
    '2022-07-15',
    '9',
    'Baño completo',
    '2850'),
    (NULL,
    '2022-07-22',
    '14',
    'Baño y corte de pelo',
    '2200'),
    (NULL,
    '2022-05-12',
    '11',
    'Corte de uñas',
    '850'),
    (NULL,
    '2022-04-14',
    '6',
    'Baño y secado',
    '1490'),
    (NULL,
    '2022-07-03',
    '8',
    'Baño y corte de uñas',
    '2250'),
    (NULL,
    '2022-07-22',
    '13',
    'Baño completo',
    '2850'),
    (NULL,
    '2022-04-30',
    '2',
    'Baño y secado',
    '1990'),
    (NULL,
    '2022-07-15',
    '12',
    'Baño y corte de uñas',
    '2250'),
    (NULL,
    '2022-07-26',
    '18',
    'Baño completo con descuento',
    '2250'),
    (NULL,
    '2022-06-21',
    '15',
    'Baño y secado',
    '1990'),
    (NULL,
    '2022-07-09',
    '11',
    'Baño completo y entrega a domicilio',
    '3000'),
    (NULL,
    '2022-05-15',
    '15',
    'Baño completo',
    '2750'),
    (NULL,
    '2022-04-14',
    '13',
    'Baño completo',
    '2650'),
    (NULL,
    '2022-01-22',
    '14',
    'Baño completo',
    '2150'),
    (NULL,
    '2022-02-02',
    '17',
    'Baño y corte de uñas',
    '2050'),
    (NULL,
    '2021-09-10',
    '16',
    'Baño completo',
    '1450'),
    (NULL,
    '2021-11-18',
    '12',
    'Baño completo',
    '1300'),
    (NULL,
    '2021-06-23',
    '2',
    'Baño y corte de uñas',
    '1150'),
    (NULL,
    '2021-10-22',
    '1',
    'Baño completo',
    '950'),
    (NULL,
    '2022-07-22',
    '14',
    'Baño completo',
    '2850'),
    (NULL,
    '2019-02-17',
    '7',
    'Baño completo',
    '750');


/*-----------------------*/
/*Ejercicio N6*/
/*-----------------------*/

SELECT Nombre 
FROM Perro 
INNER JOIN Historial 
ON Historial.Perro=Perro.ID_Perro 
WHERE FECHA>='2022-01-01';
