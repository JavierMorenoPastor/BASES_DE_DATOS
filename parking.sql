drop database if exists parking;
create database parking;
use parking;

create table cliente(
idcliente int auto_increment primary key,
nombre varchar(30),
TLF varchar(12)
);


INSERT INTO cliente (nombre, TLF) VALUES ("MIGUEL PEREZ", "919.392.292");
INSERT INTO cliente (nombre, TLF) VALUES ("GLORIA GONZALEZ", "912.354.929");
INSERT INTO cliente (nombre, TLF) VALUES ("ROSA MONTERO", "915.242.224");
INSERT INTO cliente (nombre, TLF) VALUES ("PEDRO TORRES", "915.424.345");
INSERT INTO cliente (nombre, TLF) VALUES ("ISMAEL DELGADO", "912.212.235");

create table coches(
matricula char(12) primary key,
marca varchar(12),
modelo varchar(12),
idcliente int,
foreign key(idcliente) references cliente(idcliente)
);

INSERT INTO coches VALUES ("1111AAA","FORD","FIESTA",1);
INSERT INTO coches VALUES ("2323AAA","OPEL","CORSA",2);
INSERT INTO coches VALUES ("2524BBZ","CITROEN","AX",2);
INSERT INTO coches VALUES ("2222AAA","RENAULT","12",3);
INSERT INTO coches VALUES ("5542AAB","SEAT","600",4);
INSERT INTO coches VALUES ("2211AAB","RENAULT","EXPRESS",5);
INSERT INTO coches VALUES ("2522AAA","GOLF","GTI",5);
INSERT INTO coches VALUES ("2522AAZ","CITROEN","ZX",5);

select coches.matricula, coches.marca, coches.modelo, cliente.nombre as cliente
from coches
join cliente on coches.idcliente = cliente.idcliente;

select coches.matricula, coches.marca, coches.modelo
from coches
join cliente on cliente.idcliente = coches.idcliente
where cliente.nombre = "GLORIA GONZALEZ";

select coches.matricula, coches.marca, coches.modelo
from coches
where coches.matricula like '%aaa';

alter table coches add column precio_compra int;

