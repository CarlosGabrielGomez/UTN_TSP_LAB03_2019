
USE TP_INTEGRADOR_PARTE1 
GO
--A) Listar todos los médicos de sexo femenino.

SELECT *FROM MEDICOS WHERE MEDICOS.SEXO ='F'

--B) Listar todos los médicos cuyo apellido finaliza con 'EZ'

SELECT *FROM MEDICOS WHERE MEDICOS.APELLIDO LIKE '%EZ'

--C) Listar todos los médicos que hayan ingresado a la clínica entre el 1/1/1995 y el 31/12/1999.

SELECT * FROM MEDICOS WHERE  MEDICOS.FECHAINGRESO BETWEEN '1/1/1995' AND '31/12/1999'

--) Listar todos los médicos que tengan un costo de consulta mayor a $ 650.

SELECT * FROM MEDICOS WHERE MEDICOS.COSTO_CONSULTA>650

--E) Listar todos los médicos que tengan una antigüedad mayor a 10 años.

SELECT * FROM MEDICOS WHERE DATEDIFF(YEAR, MEDICOS.FECHAINGRESO,GETDATE())>x

--F) Listar todos los pacientes que posean la Obra social 'Dasuten'.

SELECT *FROM PACIENTES  WHERE PACIENTES.IDOBRASOCIAL=4--FORMA BASICA DE RESOLVERLO
SELECT PACIENTES.NOMBRE,PACIENTES.APELLIDO,OBRAS_SOCIALES.NOMBRE FROM PACIENTES INNER JOIN OBRAS_SOCIALES
ON PACIENTES.IDOBRASOCIAL=OBRAS_SOCIALES.IDOBRASOCIAL WHERE OBRAS_SOCIALES.NOMBRE='Dasuten'

--G) Listar todos los pacientes que hayan nacido en los meses de Enero, Febrero o Marzo.

SELECT PACIENTES.NOMBRE+','+PACIENTES.APELLIDO,MONTH(PACIENTES.FECHANAC) AS 'MES NACIMIENTO' FROM PACIENTES
WHERE MONTH(PACIENTES.FECHANAC) IN (1,2,3)
--ACA DEBERIA BUSCAR UNA MANERA DE HACER UN SWITCH(REVISAR)

--H) Listar todos los pacientes que hayan tenido algún turno médico en los últimos 1500 días.

/*SELECT PACIENTES.NOMBRE+','+PACIENTES.APELLIDO AS 'PACIENTES',COUNT (TURNOS.IDPACIENTE) AS 'TURNOS POR PACIENTE' FROM TURNOS 
FULL JOIN PACIENTES ON TURNOS.IDPACIENTE=PACIENTES.IDPACIENTE GROUP BY PACIENTES.NOMBRE,PACIENTES.APELLIDO*/--ESTO DE VUELVE PACIENTES Y CANTIDAD DE TURNOS

SELECT PACIENTES.NOMBRE+','+PACIENTES.APELLIDO AS 'PACIENTES',COUNT (TURNOS.IDPACIENTE) AS 'TURNOS POR PACIENTE' FROM TURNOS 
FULL JOIN PACIENTES ON TURNOS.IDPACIENTE=PACIENTES.IDPACIENTE GROUP BY PACIENTES.NOMBRE,PACIENTES.APELLIDO
HAVING COUNT(TURNOS.IDPACIENTE)>2 
--------------------------------------------------------

SELECT P.APELLIDO,P.NOMBRE,COUNT(T.IDPACIENTE) AS 'TURNOS POR PACIENTE 'FROM TURNOS AS T INNER JOIN 
PACIENTES AS P ON T.IDPACIENTE=P.IDPACIENTE GROUP BY P.NOMBRE,P.APELLIDO,P.IDPACIENTE 
WHERE DATEDIFF(DAY,P.)
HAVING COUNT(T.IDPACIENTE)>0 



--I) Listar todos los pacientes que hayan tenido algún turno con algún médico con especialidad 'Gastroenterología'.
--J) Listar Apellido, nombre, sexo y especialidad de todos los médicos que tengan especialidad en algún tipo de 'Análisis'
--K) Listar Apellido, nombre, sexo y especialidad de todos los médicos que no posean la especialidad 'Gastroenterología', 'Oftalmologìa', 'Pediatrìa', 'Ginecología' ni 'Oncología'.
/*L) Listar por cada turno, la fecha y hora, nombre y apellido del médico, nombre y
 apellido del paciente, especialidad del médico,
 duración del turno, costo de la consulta sin descuento, obra social del paciente y 
 costo de la consulta con descuento de la obra social. Ordenar el listado de
forma cronológica. Del último turno al primero.*/



--M) Listar todos los pacientes que no se hayan atendido con ningún médico.
--N) Listar por cada año, mes y paciente la cantidad de turnos solicitados. Del paciente mostrar Apellido y nombre.
--Ñ) Listar el/los paciente que haya tenido el turno con mayor duración.
--O) Listar el promedio de duración de un turno que pertenezcan a médicos con especialidad 'Pediatría'.
--P) Listar por cada médico, el total facturado (sin descuentos) agrupado por año. Listar apellido y nombre del médico.
--Q) Listar por cada especialidad la cantidad de turnos que se solicitaron en total. Listar nombre de la especialidad.
--R) Listar por cada obra social, la cantidad de turnos
--S) Listar todos los médicos que nunca atendieron a pacientes con Obra Social 'Dasuten'.
--T) Listar todos los pacientes que no se atendieron durante todo el año 2015.
--U) Listar para cada paciente la cantidad de turnos solicitados con médicos que realizan "Análisis" y la cantidad de turnos solicitados con médicos de otras especialidades.
--V) Listar todos los médicos que no atendieron nunca por la mañana. Horario de 08:00 a 12:00.
--W) Listar el paciente que más veces se atendió para una misma especialidad.
--X) Listar las obras sociales que tengan más de 10 afiliados en la clínica.
--Y) Listar todos los pacientes que se hayan atendido con médicos de otras especialidades pero no se hayan atendido con médicos que realizan "Análisis".
--Z) Listar todos los pacientes cuyo promedio de duración por turno sea mayor a 20 minutos.
