-- 1. Insertar en la tabla direcciones
INSERT INTO Direccion (PHYSICAL_ADDRES) VALUES
('First Street Plot No 4'),
('3rd Street 34'),
('5th Avenue');

-- 2. Insertar en la tabla clientes
INSERT INTO Cliente (Cliente_ID, Full_Name, Salulation, Tabla_Direccion_Direccion_ID) VALUES
(1, 'Janet Jones', 'Ms.', 1),
(2, 'Robert Phil', 'Mr.', 2),
(2, 'Robert Phil', 'Mr.', 3);

-- 3. Insertar en la tabla películas 
INSERT INTO Pelicula (MOVIES_ID, MOVIES_RENTED, Tabla_Cliente_Cliente_ID, Tabla_Cliente_Tabla_Direccion_Direccion_ID) VALUES
(1, 'Pirate of the Caribbean', 1, 1),
(2, 'Clash of the Titans', 1, 1),
(3, 'Forgetting Sarah Marshal', 2, 2),
(4, 'Daddyś Little Girls', 2, 2),
(2, 'Clash of the Titans', 2, 3);