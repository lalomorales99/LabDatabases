create database JovenesXElFuturo

create table Tutores(
idtutores int not null primary key,
usuario varchar(255) not null unique,
iddatosGen int not null,
iddomicilio int null,
idempleos int null
)

create table Empleos(
idempleos int not null primary key,
iddomicilio int not null,
razonSocial varchar(255) not null unique,
RFC varchar(255) not null unique,
giroDeEmpresa varchar(255) not null
)

create table Becarios(
idbecario int not null primary key,
usuario varchar(255) not null unique,
iddatosGen int not null,
iddomicilio int not null,
idnivelEstudio int null
)

create table Domicilio(
iddomicilio int not null primary key,
calle varchar(255) not null,
colonia varchar(255) not null,
codigoPostal int not null,
municipio varchar(255) not null,
)

create table DatosGen(
iddatosGen int not null primary key,
nombre varchar(255) not null,
apPaterno varchar(255) not null,
apMaterno varchar(255) not null,
curp varchar(255) not null unique,
NombreCompleto as(nombre + ' ' + apPaterno + ' '+ apMaterno)
)

create table NivelEstudio(
idnivelEstudio int not null primary key,
gradoDeEstudio varchar(255) not null,
institucion varchar(255) not null,
)

alter table Tutores
add constraint relation_tutores_datosGen Foreign key(iddatosGen)
references DatosGen(iddatosGen)

alter table Tutores
add constraint relation_tutores_domicilio Foreign key(iddomicilio)
references Domicilio(iddomicilio)

alter table Tutores
add constraint relation_tutores_empleos Foreign key(idempleos)
references Empleos(idempleos)

alter table Becarios
add constraint relation_becarios_datosGen Foreign key(iddatosGen)
references DatosGen(iddatosGen)

alter table Becarios
add constraint relation_becarios_domicilio Foreign key(iddomicilio)
references Domicilio(iddomicilio)

alter table Becarios
add constraint relation_becarios_nivelEstudios foreign key(idnivelEstudio)
references NivelEstudio(idnivelEstudio)

drop table Tutores

drop table Empleos

drop table Becarios













