create database Normalizacion_Parte1
go

use 

Normalizacion_Parte1
go



create table Socios
(	legajo tinyint not null ,
	nombre varchar(50) not null,
	apellido varchar(50),
	fecha_nac date not null,
	genero char null
)

alter table Socios add constraint PK_Socios primary key(legajo)
alter table Socios add constraint CHK_Socios check (fecha_nac>'10/10/1900')
alter table Socios alter column apellido varchar(50)not null

go

create table Localidades 
(	codigo tinyint not null,
	provincia varchar(50) not null,
	primary key(codigo)
)

go
alter table Localidades add  nombre varchar(50) not null

create table Sedes
(	codigo tinyint not null primary key identity(1,1),
	direccion varchar(50),
	telofono varchar(50) null,
	email varchar(50)null,
	localidad tinyint not null foreign key references Localidades(codigo)
)

go

alter table Sedes alter column direccion varchar(50) not null 
alter table Sedes add Nombre varchar(50) not null



create table Actividades
(	codigo tinyint not null identity(1,1),
	nombre varchar(50) not null,
	certificado bit null default 0, 
 costo money not null check(costo>0),
 sede tinyint not null ,
)

 alter table Actividades add constraint pk_Actividades primary key (codigo)
 alter table Actividades add foreign key  (sede)   references Sedes(codigo)
 alter table Actividades add becado bit null default 0--una actividad podria estar becada o no 

 go




create table Socios_Y_Actividades
( socio tinyint not null,
	actividad tinyint not null

)
go

alter table Socios_Y_Actividades add foreign key (socio) references Socios(legajo)
alter table Socios_Y_Actividades add foreign key (actividad) references Actividades(codigo)
alter table Socios_Y_Actividades add constraint pk_sociosyactividades primary key(socio,actividad)



