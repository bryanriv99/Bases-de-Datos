create table Alumnos
(
	IdAlumno int,
	Nombre varchar(50),
	ApPaterno varchar(50),
	ApMaterno varchar(50),
	Promedio float,
	FechaIngreso date
);



insert into Alumnos (nombre, ApPaterno, ApMaterno, FechaIngreso, Promedio)
	values('Blanca Jenipher', 'Garcia', 'Montes','2010-02-02',10.00),
			('Brandon', 'Garcia','Ruiz','2011-08-05',9.00)
			
insert into Alumnos (nombre,ApPaterno)


			
select *
from Alumnos;