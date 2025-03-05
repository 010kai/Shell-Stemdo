Create table Estudiantes (
Estudiante_id int primary key,
edad int,
nombre varchar(20),
Nota_final decimal(3,1)
);

INSERT INTO Estudiantes (Estudiante_id, nombre, edad, Nota_final)
VALUES (4, 'Victor Perez', 21, 6);

select * from estudiantes