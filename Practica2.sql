create table Alumnos
(
	IdAlumno int,
	Nombre varchar(50),
	ApPaterno varchar(50),
	ApMaterno varchar(50),
	Promedio int,
	FechaIngreso date
);

select *
from Alumnos;

insert into Alumnos(Nombre, ApPaterno, ApMaterno, FechaIngreso, Promedio)
	values('Blanca Jenipher','Garcia','Montes','2010-02-02',10),
		  ('Brandon', 'Garcia','Ruiz', '2011-08-05',9)
		  
insert into Alumnos(Nombre, ApPaterno,FechaIngreso)
	values('Brenda','Alcantara','2024-01-05')
	
update Alumnos
	set promedio = 9
	where nombre = 'Brenda'
	
update Alumnos
	set promedio = 7
	where nombre = 'Brandon'
	
update Alumnos
	set FechaIngreso = '2013-11-24'
	where nombre = 'Brenda'
	
update Alumnos
	 set FechaIngreso = '2019-06 -17'
	 where nombre = 'Brandon'

delete from Alumnos
	where nombre = 'Blanca Jenipher'
	
	
	
	


create table Auto
(
	modelo int,
	marca varchar(50),
	color varchar(50),
	placas varchar(10)
)

select *
from Auto;

insert into Auto(marca, modelo, color, placas)
	values('Jeep', 2022,'gris','nfs-386'),
	      ('Nissan', 2013, 'rojo', 'rip-997'),
	      ('Chevrolet', 2018,'azul','ies-240'),
		  ('Seat',2003,'negro','omd-952')
		  
update Auto
	set color = 'rojo'
	where marca = 'Jeep'
	
delete from Auto
	where marca = 'Seat'
	
delete from Auto
	where marca = 'Chevrolet'
	
	
	
	
create table Materia
(
	IdMateria int,
	Nombre varchar(50),
	Nivel int,
	Creditos float
);

select *
from Materia;

insert into Materia(Nombre,Creditos, nivel)
	values('matematicas',8, 1),
	      ('fisica',8,1),
		  ('quimica',10,2),
		  ('historia',7,2),
		  ('musica', 8, 1),
		  ('computacion', 7,2)
		  
delete from Materia
	where Nombre = 'computacion'
	
delete from Materia
	where Nombre = 'musica'
	
update Materia
	set Creditos = 8.5
	where nivel = 1
	
delete from Materia
	where nivel = 1
	
insert into Materia(Nombre, Nivel,Creditos)
	values('Calculo',3, 10)
	
	
	
	
	
	
create table Cliente
(
	idCliente int,
	Nombre varchar(50)
);

select *
from Cliente;

insert into Cliente(idCliente, Nombre)
	values(1,'Bryan'),
	      (2,'Uriel'),
		  (3,'Juan'),
		  (4,'Elsa'),
		  (5,'Eslovana'),
		  (6,'Gabriela'),
		  (7,'Daniel'),
		  (8,'Santiago'),
		  (9,'Matias'),
		  (10, 'Guadalupe')
		  
create table Proveedor
(
	IdProveedor int,
	Nombre varchar(50)
);

select *
from Proveedor;

insert into Proveedor(IdProveedor, Nombre)
	values(1,'lg'),
		  (2,'yamaha'),
		  (3,'samsung'),
		  (4,'sony'),
		  (5, 'dell'),
		  (6, 'HP')
		  
create table Producto
(
	idProducto int,
	IdProveedor int,
	Nombre varchar(50),
	Existencia int,
	PrecioSugerido float,
	PrecioMinimo float,
	PrecioCompra float
);

select *
from Producto;

insert into Producto(idProducto, IdProveedor, Nombre, Existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
	values(1,1,'Tele',30,5000,4000,3000),
	      (2,1,'DVD',20,1500,1000,900),
		  (3,1,'Celular',3,2000,2000,1200),
		  (4,2,'Pantalla',5,15000,14000,10000),
		  (5,2,'BlueRay',10,5500,5300,5000),
		  (6,3,'Mp3 Player',13,900,900,500),
		  (7, NULL ,'Compu',15,19000,17000,11500)
		  
create table Ventas
(
	nVenta int,
	nTele int,
	PunitTele float,
	nDVD int,
	PunitDVD float,
	nCelular int,
	PunitCelular float,
	nPantalla  int,
	PunitPantalla float,
	nBlueRay int,
	PunitBlueRay float,
	nMp3 int,
	PunitMp3 float,
	nCompu int,
	PunitCompu float
);

select *
from Ventas;

insert into Ventas(nVenta,nCelular,PunitCelular,nMp3,PunitMp3,nBlueRay,PunitBlueRay)
	values(1,2,2000,1,900,3,5500)

insert into Ventas(nVenta,nBlueRay,PunitBlueRay,nTele,PunitTele)
	values(2,2,5500,1,5000)
	
insert into Ventas(nVenta,nPantalla,PunitPantalla)
	values(3,2,15000)