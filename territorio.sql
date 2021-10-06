
drop database if exists division_politico_administrativa;
create database division_politico_administrativa;

use division_politico_administrativa;

create table region(
    cod_region_iso varchar(10),
    nombre varchar(50),
    capital_regional varchar(30),
    primary key (cod_region_iso)
);

create table provincia(
    cod_provincia varchar(10),
    cod_region_iso varchar(10),
    nombre varchar(50),
    capital_provincial varchar(30),
    primary key (cod_provincia)
);

create table comuna(
    cod_comuna varchar(30),
    cod_provincia varchar(10),
    nombre varchar(50),
    primary key (cod_comuna)
);

alter table provincia add foreign key(cod_region_iso) references region(cod_region_iso);
alter table comuna add foreign key(cod_provincia) references provincia(cod_provincia);

insert into region (cod_region_iso,nombre,capital_regional) values('CL-AP','Arica y Parinacota','Arica');

insert into provincia(cod_provincia,cod_region_iso,nombre,capital_provincial) values('ap01','CL-AP','Arica','Arica');

insert into comuna(cod_comuna,cod_provincia,nombre) values('ap0101','ap01','Arica');

insert into comuna(cod_comuna,cod_provincia,nombre) values('ap0102','ap01','Camarones');

insert into provincia(cod_provincia,cod_region_iso,capital_provincial) values('ap02','CL-AP','Parinacota');

insert into comuna(cod_comuna,cod_provincia,nombre) values('ap0201','ap02','Putre');
insert into comuna(cod_comuna,cod_provincia,nombre) values('ap0202','ap02','General Lagos');


insert into region(cod_region_iso,nombre,capital_regional) values('CL-MA','Región de Magallanes y de la Antártica Chilena','Punta Arenas');
insert into provincia(cod_provincia,cod_region_iso,nombre,capital_provincial) values ('ma01','CL-MA','Magallanes','Punta Arenas');

insert into comuna (cod_comuna,cod_provincia,nombre) values ('ma0101','ma01','Punta Arenas');
insert into comuna (cod_comuna,cod_provincia,nombre) values ('ma0102','ma01','Laguna Blanca');
insert into comuna (cod_comuna,cod_provincia,nombre) values ('ma0103','ma01','Río Verde');
insert into comuna (cod_comuna,cod_provincia,nombre) values ('ma0104','ma01','San Gregorio');