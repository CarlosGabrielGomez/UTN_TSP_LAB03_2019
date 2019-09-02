--Consultas de Selección
--Realizar las siguientes consultas de selección. Utilizar las sentencias DISTINCT, TOP, WHERE, ORDER BY
--o UNION cuando sean necesarias.

--1) Listar el socio con el legajo 1000.

use Club
go

select  *
from Socios as s where s.Legajo=1000



--2) Listar los socios con los legajos 2000, 6000 y 3000.

select *
from Socios as s where s.Legajo in(2000,6000,3000)


--3) Listar todos los socios que posean legajos entre en el 2000 y 6000 (ambos inclusive).

select *from Socios 
select *from Socios as s where s.Legajo>=2000 and s.Legajo<=6000



--4) Listar todos los socios que no posean los legajos 2000, 6000, y 3000.



select *from Socios as s where s.Legajo not in(2000,6000,3000)


--5) Listar todos los socios que no posean los legajos entre el 2000 y 6000 (ambos inclusive).
select *from Socios
select *from Socios as s where s.Legajo<2000 or s.Legajo>6000

--6) Listar todos las socios de sexo femenino.
select *from Socios as s where s.Genero='F'
select *from Socios as s where s.Genero <>'M'

--7) Listar todos los socios que hayan nacido en el año 2000.
select*from Socios 
select *from Socios as s where YEAR(s.FechaNacimiento)=2000
--8) Listar todos los socios que hayan nacido luego del 01/04/1986.
select *from  Socios as s 
select *from Socios as s where s.FechaNacimiento>'01/04/1986'



--9) Listar el número de legajo, apellido y nombres y género de todos los socios ordenados ascendentemente por apellido.
select s.Legajo,s.Apellidos,s.Nombres,s.Genero from Socios as s order by s.Apellidos asc



--10) Listar el apellido y nombres y fecha de nacimiento de todos los socios ordenados descendentemente por fecha de nacimiento.
select s.Apellidos,s.Nombres,s.FechaNacimiento
from Socios as s order by s.FechaNacimiento desc

--11) Listar todos los socios cuyo nombre comience con vocal.

select *from Socios as s where s.Nombres like '[aeiou]%'

--12) Listar todos los socios cuyo apellido empiece y termine con consonante.
use Club
go

select *from Socios as s where s.Apellidos like '[^aeiou]%[^aeiou]'
--13) Listar todos los socios cuyo apellido tenga seis caracteres y finalice con la A.
select *from Socios as s where s.Apellidos like '_____%A'

--14) Listar el legajo, apellido, nombres y edad de cada socio.

select s.Legajo,s.Apellidos,s.Nombres,DATEDIFF(year,s.FechaNacimiento,GETDATE()) as 'Edad'
from Socios as s --revisar con switch

--15) Listar todas las actividades que se realizan en la Sede 1.
select *
from Actividades as a where a.IDSede=1

--16) Listar la actividad menos costosa.
select *from Actividades
select  top 1 *from Actividades  as s order by s.Costo asc

select top 1 a.Nombre,a.Costo
from Actividades as a order by a.Costo asc

--17) Listar la actividad más costosa. Listar todas las que cumplan dicha condición.

select *from Actividades 
select top 1 with ties *
from Actividades as a order by a.Costo desc

select top 1 with ties a.Nombre,a.Costo
from Actividades as a order by a.Costo desc


--18) Listar el ID, Nombre y Costo de todas las actividades cuyo costo supere los $500 y requieran apto médico.


select a.ID,a.Nombre,a.Costo 
from Actividades as a where a.Costo>500 and a.AptoMedico=1
--19) Listar el ID, Nombre y Costo de todas las actividades que se dicten en la Sede 2 y requieran apto médico o se dicten en la Sede 4 y superen los $1000.

select *from Actividades 

select  a.ID,a.Nombre,a.Costo 
from Actividades as a where a.IDSede=2 and a.AptoMedico=1
union

select  a.ID,a.Nombre,a.Costo 
from Actividades as a where a.IDSede=4 and a.Costo>1000


--20) Listar todas las sedes que posean teléfono.
/*update  Sedes  set Telefono=null where Sedes.Telefono='null'
update  Sedes  set Mail=null where Sedes.Mail='null'
go*/
select *from Sedes 
select *from Sedes as s where s.Telefono is not null


--21) Listar los domicilios de todas las sedes que no posean mail.

select s.Direccion
from Sedes as s where s.Mail is null

--22) Listar el nombre, domicilio, código postal y la información de contacto de cada sede. La

--información de contacto es el número de teléfono en primer lugar y la dirección de correo
--electrónico en caso de no poseer teléfono.
select  s.Nombre,s.Direccion,(


)
from Sedes as s


--23) Listar los códigos postales de todas las sedes (sin repeticiones).



--24) Listar el legajo, número de actividad y como Estado la palabra 'Becado' si el socio se encuentra
--becado, de lo contrario listar null en el Estado del socio.