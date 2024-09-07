create table Alumno
(
	id int,
		nombre varchar(50),
		boleta varchar(13),
		promedio numeric(5,2),
		rfc char(13),
		fechaRegistro timestamp,
		FechaUltimoAcceso time

)

drop table Alumno

alter table alumno
	add apPaterno varchar(50)

alter table alumno
	drop column promedio