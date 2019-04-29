
USE TP_INTEGRADOR_PARTE1 
GO
--A) Listar todos los m�dicos de sexo femenino.

SELECT *FROM MEDICOS WHERE MEDICOS.SEXO ='F'

--B) Listar todos los m�dicos cuyo apellido finaliza con 'EZ'

SELECT *FROM MEDICOS WHERE MEDICOS.APELLIDO LIKE '%EZ'

--C) Listar todos los m�dicos que hayan ingresado a la cl�nica entre el 1/1/1995 y el 31/12/1999.

SELECT * FROM MEDICOS WHERE  MEDICOS.FECHAINGRESO BETWEEN '1/1/1995' AND '31/12/1999'

--) Listar todos los m�dicos que tengan un costo de consulta mayor a $ 650.

SELECT * FROM MEDICOS WHERE MEDICOS.COSTO_CONSULTA>650

--E) Listar todos los m�dicos que tengan una antig�edad mayor a 10 a�os.

SELECT * FROM MEDICOS WHERE DATEDIFF(YEAR, MEDICOS.FECHAINGRESO,GETDATE())>x

--F) Listar todos los pacientes que posean la Obra social 'Dasuten'.

SELECT *FROM PACIENTES  WHERE PACIENTES.IDOBRASOCIAL=4--FORMA BASICA DE RESOLVERLO
SELECT PACIENTES.NOMBRE,PACIENTES.APELLIDO,OBRAS_SOCIALES.NOMBRE FROM PACIENTES INNER JOIN OBRAS_SOCIALES
ON PACIENTES.IDOBRASOCIAL=OBRAS_SOCIALES.IDOBRASOCIAL WHERE OBRAS_SOCIALES.NOMBRE='Dasuten'

--G) Listar todos los pacientes que hayan nacido en los meses de Enero, Febrero o Marzo.

SELECT PACIENTES.NOMBRE+','+PACIENTES.APELLIDO,MONTH(PACIENTES.FECHANAC) AS 'MES NACIMIENTO' FROM PACIENTES
WHERE MONTH(PACIENTES.FECHANAC) IN (1,2,3)
--ACA DEBERIA BUSCAR UNA MANERA DE HACER UN SWITCH(REVISAR)

--H) Listar todos los pacientes que hayan tenido alg�n turno m�dico en los �ltimos 1500 d�as.

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



--I) Listar todos los pacientes que hayan tenido alg�n turno con alg�n m�dico con especialidad 'Gastroenterolog�a'.
--J) Listar Apellido, nombre, sexo y especialidad de todos los m�dicos que tengan especialidad en alg�n tipo de 'An�lisis'
--K) Listar Apellido, nombre, sexo y especialidad de todos los m�dicos que no posean la especialidad 'Gastroenterolog�a', 'Oftalmolog�a', 'Pediatr�a', 'Ginecolog�a' ni 'Oncolog�a'.
/*L) Listar por cada turno, la fecha y hora, nombre y apellido del m�dico, nombre y
 apellido del paciente, especialidad del m�dico,
 duraci�n del turno, costo de la consulta sin descuento, obra social del paciente y 
 costo de la consulta con descuento de la obra social. Ordenar el listado de
forma cronol�gica. Del �ltimo turno al primero.*/



--M) Listar todos los pacientes que no se hayan atendido con ning�n m�dico.
--N) Listar por cada a�o, mes y paciente la cantidad de turnos solicitados. Del paciente mostrar Apellido y nombre.
--�) Listar el/los paciente que haya tenido el turno con mayor duraci�n.
--O) Listar el promedio de duraci�n de un turno que pertenezcan a m�dicos con especialidad 'Pediatr�a'.
--P) Listar por cada m�dico, el total facturado (sin descuentos) agrupado por a�o. Listar apellido y nombre del m�dico.
--Q) Listar por cada especialidad la cantidad de turnos que se solicitaron en total. Listar nombre de la especialidad.
--R) Listar por cada obra social, la cantidad de turnos
--S) Listar todos los m�dicos que nunca atendieron a pacientes con Obra Social 'Dasuten'.
--T) Listar todos los pacientes que no se atendieron durante todo el a�o 2015.
--U) Listar para cada paciente la cantidad de turnos solicitados con m�dicos que realizan "An�lisis" y la cantidad de turnos solicitados con m�dicos de otras especialidades.
--V) Listar todos los m�dicos que no atendieron nunca por la ma�ana. Horario de 08:00 a 12:00.
--W) Listar el paciente que m�s veces se atendi� para una misma especialidad.
--X) Listar las obras sociales que tengan m�s de 10 afiliados en la cl�nica.
--Y) Listar todos los pacientes que se hayan atendido con m�dicos de otras especialidades pero no se hayan atendido con m�dicos que realizan "An�lisis".
--Z) Listar todos los pacientes cuyo promedio de duraci�n por turno sea mayor a 20 minutos.
