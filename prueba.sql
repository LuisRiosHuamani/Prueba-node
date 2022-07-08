USE MASTER
GO

CREATE DATABASE COMPUTO
GO

use COMPUTO
go

create table productos
(
idproducto int identity(1,1) primary key not null, 
producto varchar(60) not null,
precio float,
stock smallint
)

create table categoria
(
idcategoria int identity(1,1) primary key not null,
categoria varchar(60) not null,
idproducto int,
constraint fk_productocategoria foreign key (idproducto) references productos 
)

select * from productos;

insert into productos values ('monitor', 25.00, 2),
 ('cpu', 25.00, 2)

 insert into categoria values ('computo', 1),
 ('hadware', 2)


