create table Mecanico
(
	nombre varchar(50),
	fechaIngreso date
);

create table Refacciones
(
	nombre varchar(50),
	fechaLlegada date,
	garantia date
);

create table Carros
(
	marca varchar(50),
	modelo int,
	descripcionSintomas varchar(100)
);