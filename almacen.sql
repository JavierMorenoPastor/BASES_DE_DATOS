drop database if exists ALMACEN;
create database ALMACEN;
use ALMACEN;

create table CATEGORIA(
idcategoria int primary key,
categoria varchar(25)
);
create table PRODUCTO(
idproducto int primary key,
idcategoria int,
nombre varchar(100),
precio float,
stock int,
foreign key (idcategoria) references Categoria(idcategoria)
);
insert into CATEGORIA values (1, "electronica");
insert into CATEGORIA values (2, "ropa");
insert into CATEGORIA values (3, "alimentos");
insert into CATEGORIA values (4, "hogar");
insert into CATEGORIA values (5, "juguetes");
insert into CATEGORIA values (6, "deportes");
insert into CATEGORIA values (7, "salud y belleza");
insert into CATEGORIA values (8, "automotriz");
insert into CATEGORIA values (9, "libros");
insert into CATEGORIA values (10, "musica");

insert into PRODUCTO values (1, 1, "telefono movil", 299.99, 50);
insert into PRODUCTO values (2, 1, "Laptop", 999.99, 30);
insert into PRODUCTO values (3, 1, "Auriculares Inalámbricos", 79.99, 100);
insert into PRODUCTO values (4, 1, "Televisor 4K", 599.99, 20);
insert into PRODUCTO values (5, 1, "Cámara Digital", 499.99, 15);

insert into PRODUCTO values (6, 2, "Camisa", 29.99, 100);
insert into PRODUCTO values (7, 2, "Pantalones", 49.99, 75);
insert into PRODUCTO values (8, 2, "Zapatos", 89.99, 50);
insert into PRODUCTO values (9, 2, "Chaqueta", 119.99, 30);
insert into PRODUCTO values (10, 2, "Vestido", 69.99, 40);

insert into PRODUCTO values (11, 3, "Arroz", 1.99, 200);
insert into PRODUCTO values (12, 3, "Aceite", 4.99, 150);
insert into PRODUCTO values (13, 3, "Sal", 0.99, 300);
insert into PRODUCTO values (14, 3, "Azúcar", 2.49, 100);
insert into PRODUCTO values (15, 3, "Pasta", 1.49, 250);

insert into PRODUCTO values (16, 4, "Sofá", 499.99, 20);
insert into PRODUCTO values (17, 4, "Mesa de Comedor", 299.99, 15);
insert into PRODUCTO values (18, 4, "Silla", 49.99, 50);
insert into PRODUCTO values (19, 4, "Lámpara", 39.99, 100);
insert into PRODUCTO values (20, 4, "Cortina", 29.99, 75);

insert into PRODUCTO values (21, 5, "Muñeca", 24.99, 150);
insert into PRODUCTO values (22, 5, "Construcciones", 39.99, 80);
insert into PRODUCTO values (23, 5, "Rompecabezas", 14.99, 200);
insert into PRODUCTO values (24, 5, "Pelota", 19.99, 120);
insert into PRODUCTO values (25, 5, "Triciclo", 89.99, 30);

INSERT INTO Producto VALUES (26, 6, "Bicicleta", 199.99, 25);
INSERT INTO Producto VALUES (27, 6, "Balón de Fútbol", 29.99, 100);
INSERT INTO Producto VALUES (28, 6, "Raqueta de Tenis", 59.99, 40);
INSERT INTO Producto VALUES (29, 6, "Mancuernas", 39.99, 60);
INSERT INTO Producto VALUES (30, 6, "Equipo de Yoga", 49.99, 70);

insert into PRODUCTO values (31, 7, "Crema Hidratante", 19.99, 150);
insert into PRODUCTO values (32, 7, "Champú", 9.99, 100);
insert into PRODUCTO values (33, 7, "Jabón", 3.99, 200);
insert into PRODUCTO values (34, 7, "Maquillaje", 24.99, 80);
insert into PRODUCTO values (35, 7, "Perfume", 49.99, 50);

insert into PRODUCTO values (36, 8, "Aceite de Motor", 29.99, 100);
insert into PRODUCTO values (37, 8, "Frenos", 49.99, 60);
insert into PRODUCTO values (38, 8, "Neumático", 79.99, 40);
insert into PRODUCTO values (39, 8, "Luz LED", 19.99, 80);
insert into PRODUCTO values (40, 8, "Cargador de Coche", 14.99, 120);

insert into PRODUCTO values (41, 9, "Novela", 15.99, 200);
insert into PRODUCTO values (42, 9, "Libro de Cocina2, 20.99, 150);
insert into PRODUCTO values (43, 9, "Biografía", 25.99, 100);
insert into PRODUCTO values (44, 9, "Ciencia Ficción", 18.99, 120);
insert into PRODUCTO values (45, 9, 'Educación', 22.99, 80);

insert into PRODUCTO values (46, 10, "CD de Música", 14.99, 150);
insert into PRODUCTO values (47, 10, "Vinilo", 19.99, 100);
insert into PRODUCTO values (48, 10, "Entradas de Concierto", 49.99, 50);
insert into PRODUCTO values (49, 10, "Instrumento Musical", 199.99, 30);
insert into PRODUCTO values (50, 10, "Accesorios de Música", 29.99, 75);


