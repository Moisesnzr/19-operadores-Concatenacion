
-- 1- Elimine la tabla:
drop table articulos;

-- 2- Cree la tabla:
create table articulos(
    codigo number(4),
    nombre varchar2(20),
    descripcion varchar2(30),
    precio number(8,2),
    cantidad number(3) default 0,
    primary key (codigo)
);

-- 3- Ingrese algunos registros:
insert into articulos values (101,'impresora','Epson Stylus C45',400.80,20);
insert into articulos values (203,'impresora','Epson Stylus C85',500,30);
insert into articulos values (205,'monitor','Samsung 14',800,10);
insert into articulos values (300,'teclado','ingles Biswal',100,50);

/* 4- El comercio quiere aumentar los precios de todos sus artículos en un 15%. 
    Actualice todos los precios empleando operadores aritméticos.*/
update articulos set precio = precio + (precio * 0.15);

-- 5- Vea el resultado.
select *from articulos;

-- 6- Muestre todos los artículos, concatenando el nombre y la descripción de cada uno de ellos separados por coma.
select nombre||', '||descripcion from articulos;

-- 7- Reste a la cantidad de todas las impresoras, el valor 5, empleando el operador aritmético menos ("-")
update articulos set cantidad = cantidad - 5 where nombre = 'impresora';

-- 8- Recupere todos los datos de las impresoras para verificar que la actualización se realizó.
select *from articulos where nombre='impresora';

/* 9- Muestre todos los artículos concatenado los campos para que aparezcan de la siguiente manera "Cod. 
    101: impresora Epson Stylus C45 $460,92 (15)"*/
select 'Cod. '||codigo||': '||nombre||', '||descripcion||' $'||precio||' ('||cantidad||')' from articulos;