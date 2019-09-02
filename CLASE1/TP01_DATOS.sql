use Normalizacion_Parte1
go

--SOCIOS


insert into Socios(legajo,nombre,apellido,fecha_nac)values(1,'Angelelli','javier','1/1/1990')
insert into Socios(legajo,nombre,apellido,fecha_nac)values(2,'Baires','Belén','2/2/1998')
insert into Socios(legajo,nombre,apellido,fecha_nac)values(3,'Corrionero','Juan','3/3/2004')
insert into Socios(legajo,nombre,apellido,fecha_nac)values(4,'Garcia','Oriana','8-5-1990')
insert into Socios(legajo,nombre,apellido,fecha_nac)values(5,'Kusters','Kevin','10/11/1988')
insert into Socios(legajo,nombre,apellido,fecha_nac)values(6,'Lacioppa','Ignacio','6/6/2000')
insert into Socios(legajo,nombre,apellido,fecha_nac)values(7,'Rocca','Federico','10/11/1988')
insert into Socios(legajo,nombre,apellido,fecha_nac)values(8,'Albornoz','Magalí','8/8/1990')
insert into Socios(legajo,nombre,apellido,fecha_nac)values(9,'Lopez','Gustvo','10/11/1997')
insert into Socios(legajo,nombre,apellido,fecha_nac)values(10,'Rodriguez','Magalí','8/8/1990')



---localidades
insert into Localidades (codigo,nombre,provincia)values (1,'Adolfo Alsina','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (2,'Adolfo Gonzales Chaves','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (3,'Alberti','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (4,'Almirante Brown	','Buenos Aires')
insert into Localidades (codigo,nombre,provincia)values (5,'Arrecifes','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (6,'Avellaneda','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (7,'Ayacucho','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (8,'Azul','Buenos Aires')
insert into Localidades (codigo,nombre,provincia)values (9,'Bahía Blanca','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (10,'Balcarce','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (11,'Baradero','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (12,'Benito Juárez','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (13,'Berazategui','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (14,'Berisso','Buenos Aires')		
insert into Localidades (codigo,nombre,provincia)values (15,'Bolívar','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (16,'Bragado','Buenos Aires')		
insert into Localidades (codigo,nombre,provincia)values (17,'Brandsen','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (18,'Campana','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (19,'Cañuelas','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (20,'Capitán Sarmiento Carlos','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (21,'Carlos Casares','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (22,'Carlos Tejedor','Buenos Aires')	
insert into Localidades (codigo,nombre,provincia)values (23,'Carmen de Areco','Buenos Aires')


--sedes 

insert into Sedes (direccion,localidad,Nombre)values('Presidente Simón 4400',1,'Norte')
insert into Sedes (direccion,localidad,Nombre)values('Dr Kloster 1080',3,'Sur')
insert into Sedes (direccion,localidad,Nombre)values('Virrey Calabuig 1350',5,'Este')
insert into Sedes (direccion,localidad,Nombre)values('Almirante De Amos 3200 ',6,'Oeste')
insert into Sedes (direccion,localidad,Nombre)values('Av. CodeBlocks 1712',7,'MicroEstadio1')


--actividaddes

insert into Actividades(nombre,costo,sede)values('Squash',20,1)
insert into Actividades(nombre,costo,sede)values('Remo',40,2)
insert into Actividades(nombre,costo,sede)values('Natacion',30,3)
insert into Actividades(nombre,costo,sede)values('Ajedrez',50,4)
insert into Actividades(nombre,costo,sede)values('Tenis',20,4)
insert into Actividades(nombre,costo,sede)values('Basquet',10,5)



