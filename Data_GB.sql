USE Gestion_Biblioteca;

/*insertar datos en la tabla Tabla_Cliente*/
INSERT INTO Cliente (`Customer Name`, `Customer Email`, `Customer Address`) VALUES
('John Smith', 'john@email.com', '123 Main St, Boston, MA 02101'),
('Jane Doe', 'jane@email.com', '456 Oak Avenue, Portland, OR 97201'),
('Sara Johnson', 'sarah.j@company.com', '789 Pine Street, Seattle, WA 98101');

/*insertar datos en la tabla Tabla_Libro*/
INSERT INTO Libro (`Book Title`, `Book Author`, `Book Price`, Tabla_Cliente_Customer_ID) VALUES
('Database Design Principles', 'CJ. Date', 45.99, 1),
('SQL Cookbook', 'Anthony Molinaro', 39.99, 1),
('Advanced SQL Techniques', 'Jose Ceiko', 52.99, 1);

/*insertar datos en la tabla Tabla_Orden*/
INSERT INTO Orden (`Order Date`, Quantity, Tabla_Cliente_Customer_ID) VALUES
('2024-01-15', 2, 1),
('2024-01-15', 1, 1),
('2024-01-20', 1, 1),
('2024-01-18', 1, 2),
('2024-02-01', 1, 1),
('2024-02-03', 3, 3);