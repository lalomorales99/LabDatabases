create database JovenesConstruyendoElFuturo

use JovenesConstruyendoElFuturo

create table Tutores(
idtutores int not null primary key,
nombre varchar(255) not null,
PrimerApellido varchar(255) null,
SegundoApellido varchar(255) null,
NombreCompleto as(nombre + ' ' + PrimerApellido + ' '+ SegundoApellido)
)

drop table Tutores

create table Tutores(
idtutores int not null primary key,
nombre varchar(255) not null,
PrimerApellido varchar(255) null,
SegundoApellido varchar(255) null,
CURP varchar(255) not null,
NombreCompleto as(nombre + ' ' + PrimerApellido + ' '+ SegundoApellido)
--AGREGAR LLAVE FORANEA DE EMPRESA, ORGANIZACION, ETC
)

create table AddressTutores(
--AGREGAR IDTUTORES COMO FORANEA
calle varchar(255) not null,
numeroDeCasa int not null,
colonia varchar(255) not null,
codigoPostal int not null
)

drop table AddressTutores

create table AddressTutores(
--AGREGAR IDTUTORES COMO FORANEA
calle varchar(255) not null,
numeroDeCasa int not null,
colonia varchar(255) not null,
codigoPostal int not null,
DireccionCompleta as(calle + ' '+ numeroDeCasa + ' ' + colonia + ' '+ codigoPostal)
)

create table Empresas(
idEmpresa int not null primary key,
razonSocial varchar(255) not null,
municipio varchar(255) not null,
estado varchar(255) not null,
calle varchar(255) not null,
numeroExterior int not null,
colonia varchar(255) not null,
giroDeLaEmpresa varchar(255) not null,
)

create table InstitucionPublica(
idInstitucionPublica int not null primary key,
nombreDeInstitucion varchar(255) not null,
RFC varchar(255) not null,
municipio varchar(255) not null,
estado varchar(255) not null,
calle varchar(255) not null,
numeroExterior int not null,
colonia varchar(255) not null,
)

create table OrganizacionesSociales(
idOrganizacionSocial int not null primary key,
nombreDeOrganizacionSocial varchar(255) not null,
RFC varchar(255) not null,
municipio varchar(255) not null,
estado varchar(255) not null,
calle varchar(255) not null,
numeroExterior int not null,
colonia varchar(255) not null,
giroDeLaEmpresa varchar(255) not null,
)

create index 
INDX_tutor_NombreCompleto on Tutores(NombreCompleto)

create index
INDX_AddressTutores_DireccionCompleta on AddressTutores(DireccionCompleta)


