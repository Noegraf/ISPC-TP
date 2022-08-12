drop database  PELUQUERIA_CANINA;
CREATE DATABASE PELUQUERIA_CANINA;
use peluqueria_canina;

create table Duenos (
 DNI VARCHAR(30) NOT NULL,
 Nombre VARCHAR(50) NULL,
 Apellido VARCHAR(50) NULL,
  Telefono  VARCHAR(45) NULL,
  Direccion  VARCHAR(70) NULL,
  PRIMARY KEY (DNI)
  );
  
insert into Duenos values ("26978541","Ignacio","Retamar","3516330081","Altamira 3211");
insert into Duenos values ("29678443","Pedro","Gomez","3516560547","Chacabuco 729");
insert into Duenos values ("33980562","Horacio","Nacif","3515125478","Rivadavia 201");
insert into Duenos values ("10035155","Pedro","Martinez","3512584369","Alem 441");
insert into Duenos values ("35563589","Marcela","Dias","3517859631","Pose 1254");


/*select*from Duenos;*/
 
create table Perros (
	ID_PERRO INT NOT NULL AUTO_INCREMENT,
    NOMBREp VARCHAR(20) NULL,
    FECHA_NAC DATE NULL,
    SEXO VARCHAR(10) NULL,
    DNI_1 VARCHAR(30) NOT null,
    constraint pk_IP primary key (id_perro),
    constraint fk_d1 foreign key (DNI_1) REFERENCES Duenos (DNI)
);

insert into Perros values (1,"Boni","2019/11/02","hembra","26978541");
insert into Perros values (2,"Tony","2018/06/10","macho","29678443");
insert into Perros values (3,"Lola","2022/06/04","hembra","33980562");
insert into Perros values (4,"Toby","2017/08/10","macho","10035155");
insert into Perros values (5,"Milo","2014/12/06","macho","35563589");

update Perros SET FECHA_NAC = "2022/06/05" WHERE ID_PERRO = 3;
SELECT NOMBREp FROM Perros INNER JOIN Duenos on Perros.DNI_1=Duenos.DNI WHERE Nombre="pedro";



create table Historial (
	ID_HISTORIAL INT NOT NULL AUTO_INCREMENT,
    FECHA DATE NULL,
    ID_PERRO1 int NULL,
    DESCRIPCION VARCHAR(50) NULL,
    MONTO INT NULL,
    CONSTRAINT pk_IH primary key(id_historial),
    constraint fk_IP1 foreign key (ID_PERRO1) REFERENCES Perros (ID_PERRO)
);

INSERT INTO Historial values (1,"2022/06/05",1,"vacunacion",1500);
INSERT INTO Historial values (2,"2022/06/11",2,"castracion",1200);
INSERT INTO Historial values (3,"2019/08/14",4,"internacion por accidente",15800);
INSERT INTO Historial values (4,"2022/12/12",3,"afeccion de rinones",2500);
INSERT INTO Historial values (5,"2017/01/05",1,"vacunacion",1000);
INSERT INTO Historial values (6,"2017/07/11",1,"desparacitacion",800);
INSERT INTO Historial values (10,"2015/03/04",5,"vacunacion",600);

DELETE FROM Historial WHERE ID_HISTORIAL = 7;

SELECT * FROM Historial;
SELECT NOMBREp FROM Perros INNER JOIN Historial on Historial.ID_PERRO1=Perros.ID_PERRO WHERE FECHA>="2022/1/01";
SELECT MONTO FROM Historial WHERE FECHA >= "2022/06/01"AND FECHA < "2022/07/01" ;
UPDATE Duenos SET Direccion = "Libertad 123" WHERE DNI = "26978541";
/*/*DELETE FROM HISTORIAL WHERE ID_HISTORIAL > 0;*/
SELECT NOMBRE FROM Duenos INNER JOIN Perros on Perros.DNI_1=Duenos.DNI
INNER JOIN Historial on Historial.ID_PERRO1=Perros.ID_PERRO WHERE FECHA < "2022/01/01" AND FECHA_NAC > "2018/01/01";
SELECT NOMBREp FROM Perros WHERE FECHA_NAC >= "2020/01/01" AND FECHA_NAC < "2023/01/01" AND SEXO = "MACHO";
