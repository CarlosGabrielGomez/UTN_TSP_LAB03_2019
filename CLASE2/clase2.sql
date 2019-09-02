/*create database Clase2

go 

use Clase2
go*/

create table Alumnos
(	legajo tinyint not null identity(1,1),
	nombre varchar(50) not null,
	apellido varchar (50) not null,

)
alter table Alumnos add constraint  pk_legajo primary key (legajo)
go

create table Carreras
(
	codigo tinyint not null primary key identity(1,1),
	nombre varchar(50) not null,
	duracion tinyint null check(duracion>0),
)

go

create table Materias
(	codigo tinyint not null ,
	nombre varchar(50) not null,
	cuatrimestre tinyint not null check(cuatrimestre>0),
	anio tinyint not null check(anio>0),

	--la tabla me permite cargar a mano el codu
)
--alter table Materias add constraint pk_materias primary key(codigo)

alter table Materias add constraint pk_materias_carreras primary key(codigo)


go




 create table Carreras_Materias
 (	materia tinyint not null ,
	carrera tinyint  not null

 )

 go

 alter table Carreras_Materias add foreign key(materia) references Materias
 alter table Carreras_Materias add foreign key(carrera) references Carreras
 alter table Carreras_Materias add constraint pkc_materia_carrera primary key (materia,carrera)


 go

 create table Inscripciones
 (	alumno tinyint not null ,
	carrera tinyint not null,
	materia tinyint not null,
	estado char not null default 'R',
	fecha_ins date not null check(fecha_ins>'10/10/1900')

 )
 alter table Inscripciones add foreign key(alumno) references Alumnos
 alter table Inscripciones add foreign key(carrera) references Carreras
 alter table Inscripciones add foreign key(materia)references Materias
 alter table Inscripciones add constraint pk_inscripciones primary key(alumno,carrera,materia)


 go

 create table Examenes
 (	alumno tinyint not null ,
	carrera tinyint not null,
	materia tinyint not null,
	nota tinyint null check(nota>0),
	fecha date not null default '10/10/1900'
 )
 
 alter table Examenes add foreign key(alumno) references Alumnos
 alter table Examenes add foreign key(carrera) references Carreras
 alter table Examenes add foreign key(materia)references Materias
 alter table Examenes  add constraint pk_examenes primary key(alumno,carrera,materia)



 --datos ingresados 

 
