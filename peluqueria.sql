create table peluqueria;
use peluqueria;
create table dueno(
dni int not null unique,
nombre varchar (30) not null,
apellido varchar (30) not null,
telefono bigint not null,
direccion varchar (50) not null,
constraint pk_dni primary key (dni)
);
create table perro(
id_perro int auto_increment not null,
nombre_p varchar (30) not null,
fecha_nac date,
sexo varchar (10) not null,
dni_dueno int,
constraint pk_id_p primary key (id_perro),
constraint fk_dni_d foreign key (dni_dueno) references dueno (dni)
);
create table historial(
id_historial int auto_increment not null,
fecha_h date,
id_perro_h int,
descripcion varchar (300),
monto int not null,
constraint pk_id_h primary key (id_historial),
constraint fk_id_p foreign key (id_perro_h) references perro (id_perro)
);
insert into dueno (dni, nombre, apellido, telefono, direccion) values ('34675893', 'Pedro', 'Valle', '3415092050', 'Alvear 423');
insert into perro (nombre_p, fecha_nac, sexo, dni_dueno) values ('Cachurra', 02/03/2012, 'fenenino', '34675893');

select nombre from dueno where nombre="Pedro";