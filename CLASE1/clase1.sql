create database Clase1
go
use Clase1
go

create table Socios
(	legajo tinyint not null ,--con unique definimos que legajo no puede repetirse
	nombre varchar(50) not null,
	apellido varchar(50),
	fecha_nac date not null,
	genero char null
)

alter table Socios add constraint PK_Socios primary key(legajo)

go

create table Localidades 
(	codigo tinyint not null,
	provincia varchar(50) not null,
	primary key(codigo)
)

go

create table Sedes
(	codigo tinyint not null primary key identity(1,1),
	direccion varchar(50),
	telofono varchar(50) null,
	email varchar(50)null,
	localidad tinyint not null foreign key references Localidades(codigo)

)


go


create table Actividades
(	codigo tinyint not null identity(1,1),
	nombre varchar(50) not null,
	certificado bit null default 0, 
 costo money not null check(costo>0),
 sede tinyint not null ,

)
 alter table Actividades add constraint pk_Actividades primary key (codigo)
 alter table Actividades add foreign key  (sede)   references Sedes(codigo)

 go
