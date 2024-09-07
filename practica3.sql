create table Cliente
(
	idCliente int,
	Nombre varchar(50),
	ApPat varchar(50),
	ApMat varchar(50)
);
	
alter table Cliente
	add rfc varchar(20);
	
alter table Cliente
	add Credito float;
	
alter table Cliente
	add Deuda float;
	
alter table Cliente
	add Direccion varchar(100);

select *
from Cliente;

insert into Cliente(idCliente, Nombre, ApPAt, ApMAt)
	values(1,'Bryan','Rivera','Plascencia'),
	      (2,'Uriel','Sanchez','Gutierrez'),
		  (3,'Juan','Gonzalez','Peña'),
		  (4,'Elsa','Romo','Marquez'),
		  (5,'Eslovana','Macias','Marquez'),
		  (6,'Gabriela','Diaz','Gomez'),
		  (7,'Daniel','Dominguez','Perez'),
		  (8,'Santiago','Linarez','Trejo'),
		  (9,'Matias','Valdez','Estrada'),
		  (10, 'Guadalupe','Palacios','Valencia')

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


select 'Hola humano',5000;

select Nombre
from Cliente;

select 'Hola ' || Nombre
from Cliente;

select Nombre || ' 300'
from Cliente;

select 'Hola ' || Nombre || ' 0'
from Cliente;

select ApPat as "Apellido Paterno", ApMat as "Apellido Materno", Nombre as "Nombre"
from Cliente;

select Nombre as "Nombre", ApPat as "Apellido Paterno", ApMat "Apellido Materno"
from Cliente;

select idCliente as "Id", Nombre as "Nombre", ApPat as "Apellido Paterno", rfc as "rfc"
from Cliente;

select ApPat as "Apellido Paterno", Direccion as "Direccion"
from Cliente;

select ApPat as "Apellido Paterno", ApMat as "Apellido Materno", Nombre as "Nombre", Credito as "Credito", Deuda as "Deuda"
from Cliente;

select Nombre as "nombre"
from Proveedor;

select *
from Cliente;

select Nombre as "Nombre"
from Producto;

select Nombre as "Nombre", PrecioSugerido as "Precio Sugerido"
from Producto;

select Nombre as "Nombre", PrecioCompra as "Precio de Compra", PrecioSugerido as "Precio Sugerido"
from Producto;