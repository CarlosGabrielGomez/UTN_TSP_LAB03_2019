create database TP_Normalizacion
go 
use TP_Normalizacion
go 
create table Localidades
(	cod_loc tinyint not null ,
	nombre varchar(50) not null,
	provincia varchar(50) not null
)

go

alter table Localidades add constraint pk_localidades primary key(cod_loc)
go


create table Sedes
( cod_sed tinyint not null primary key identity(1,1),
nombre	varchar(50) not null,
localidad tinyint not null foreign key references Localidades(cod_loc)
	
)
go


alter table Sedes add telefono varchar(50) null 
alter table Sedes add email varchar(50) null


create table Actividades
 (
	cod_act tinyint not null identity(1,1),
	nombre varchar(50) not null default 'algo',--el dault no necesita de una asignacion
	precio money not null check (precio>0),--el check debe in entre parentesis
	sede tinyint not null foreign key references Sedes(cod_sed),

)
go
alter table Actividades add constraint pk_actividades primary key(cod_act)
go

set dateformat dmy--establecemos formato de fecha 

create table Socios
(	legajo tinyint not null  primary key,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	fecha_nac datetime not null  check(fecha_nac<'1/1/2010'),
	genero char null default 't'


)
go