select *
from alumno;

insert into alumno(nombre, id)
			values('juan', 1),
					('elsa',4),
					('uriel',5)

insert into alumno (rfc, nombre, id,fechaRegistro)
			values('case','Kike', 3,'2023-12-13')
		
update alumno
	set nombre = 'Bryan Rivera'
	where id = 2
	
delete from alumno
	where nombre = 'Kike'