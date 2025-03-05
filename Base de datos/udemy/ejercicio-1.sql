create table Libros (
libro_id int Primary key, -- Identificador unico
titulo VARCHAR(255) not NULL,
autor varchar(100) not null, -- AUTOR LIBRO
Fecha_Publicacion date, -- Fecha de publicacion del libro
genero varchar(50) -- Genero literario 
);

select *from libros;