INSERT INTO `persona` (`nombre`, `apellido`, `genero`, `fecha_nacimiento`, `tipo_identificacion`, `identificacion`, `telefono`, `correo`, `id_municipio`, `direccion`, `zip`)
VALUES
('Kevin', 'Garcia', 'm', '1990-01-05', 'cc', '123456789', '3110000001', 'kevin.garcia@gmail.com', 150, 'Calle 1 #1-1', '12345'),
('Ana', 'Martinez', 'f', '1985-05-20', 'cc', '987654321', '3110000002', 'ana.martinez@gmail.com', 679, 'Calle 2 #2-2', '12345'),
('Gonazalo', 'Gomez', 'm', '1980-08-15', 'cc', '555555555', '3110000003', 'gonzalo.gomez@gmail.com', 679, 'Calle 3 #3-3', '12345'),
('Maria', 'Perez', 'f', '1995-09-09', 'cc', '666666666', '3110000004', 'maria.perez@gmail.com', 788, 'Calle 4 #4-4', '12345'),
('Luis', 'Torres', 'm', '1992-11-30', 'cc', '777777777', '3110000005', 'luis.torres@gmail.com', 485, 'Calle 5 #5-5', '12345'),
('Sara', 'Diaz', 'f', '1998-07-25', 'cc', '888888888', '3110000006', 'sara.diaz@gmail.com', 485, 'Calle 6 #6-6', '12345'),
('Jorge', 'Lopez', 'm', '1991-03-10', 'cc', '999999999', '3110000007', 'jorge.lopez@gmail.com', 585, 'Calle 7 #7-7', '12345'),
('Rubiel', 'Ramirez', 'm', '1987-12-17', 'cc', '111111111', '3110000008', 'rubiel.ramirez@gmail.com', 585, 'Calle 8 #8-8', '12345'),
('Laura', 'Vargas', 'f', '1993-06-02', 'cc', '222222222', '3110000009', 'laura.vargas@gmail.com', 150, 'Calle 9 #9-9', '12345'),
('Andres', 'Morales', 'm', '1996-10-22', 'cc', '333333333', '3110000010', 'anres.morales@gmail.com', 547, 'Calle 10 #10-10', '12345');


INSERT INTO `inmueble` (`nomenclatura`, `m2`, `id_tipo_inmueble`)
VALUES
('X101', '50', 1),
('X102', '60', 2),
('S103', '55', 2),
('S104', '70', 4),
('D105', '65', 1),
('D101', '75', 4),
('D102', '80', 1),
('Q103', '85', 4),
('Q104', '90', 1),
('Q105', '95', 3);

INSERT INTO `usuario` (`id`, `login`, `password`, `id_persona`, `id_rol`)
VALUES
(2, 'kevin.garcia@gmail.com', 'password1', 2, 1),  
(3, 'ana.martinez@gmail.com', 'password2', 3, 2), 
(4, 'gonzalo.gomez@gmail.com', 'password3', 4, 3), 
(5, 'maria.perez@gmail.com', 'password4', 5, 4),  
(6, 'luis.torres@gmail.com', 'password5', 6, 5),  
(7, 'sara.diaz@gmail.com', 'password6', 7, 1),     
(8, 'jorge.lopez@gmail.com', 'password7', 8, 2),  
(9, 'rubiel.ramirez@gmail.com', 'password8', 9, 3), 
(10, 'laura.vargas@gmail.com', 'password9', 10, 4), 
(11, 'anres.morales@gmail.com', 'password10', 11, 5); 
