create database bomberos;
use juanj;

create table if not exists turnos(
codTurno integer unsigned primary key,
descripcion varchar(20) not null)Engine=InnoDB;

create table parqueBomberos(
codParque integer unsigned primary key,
catagoria varchar(20) not null,
direccion varchar(50) not null,
nombre varchar(30) not null)Engine=InnoDB;

create table equipo(
codEquipo integer unsigned primary key,
nombre varchar(30) not null)Engine=InnoDB;

create table bomberos(
codBombero integer unsigned primary key,
nombre varchar(20) not null,
apellidos varchar(30) not null,
fechNacim date not null,
direccion varchar(50),
dni char(9) not null unique,
codParque integer unsigned,
codEquipo integer unsigned,
puesto varchar(20),
foreign key (codParque) references parqueBomberos(codParque),
foreign key (codEquipo) references equipo(codEquipo))Engine=InnoDB;