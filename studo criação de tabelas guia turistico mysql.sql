create database if not exists guiatur 
default charset = utf8
default collate = utf8_general_ci;

use guiatur;

create table if not exists pais (
id int (11) primary key not null auto_increment,
nome varchar(50) not null default '',
continente enum ( 'Ásia', 'America', 'Africa', 'Oceania', 'Antartida') not null,
codigo char(3) not null
);

create table if not exists estado (
id int  primary key not null auto_increment,
nome varchar(50) not null default '',
sigla char(2) not null
);

show tables;

create table if not exists cidade (
id int (11) primary key not null auto_increment,
nome varchar(50) not null default '',
cpopulacao int not null
);

create table if not exists ponto_tur(
  id int (11) primary key not null auto_increment,
  nome varchar(50) not null default '',
  tipo enum('Atrativo', 'Servicço', 'Equipamento', 'Infraestrutura', 'Instituição') not null,
  pulicado enum('sim', 'não') not null default 'não'
);
show tables;

create table if not exists coordenada(
lattidude float(10,6),
longitude float(10,3)
);
