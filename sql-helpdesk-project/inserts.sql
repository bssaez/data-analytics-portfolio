INSERT INTO Customers (FullName, Email, Department)
VALUES
('Ana Gómez','ana.gomez@mail.com','Finance'),
('Luis Pérez','luis.perez@mail.com','IT'),
('Carla Torres','carla.torres@mail.com','Sales'),
('Jorge Martínez','jorge.martinez@mail.com','HR'),
('María López','maria.lopez@mail.com','Marketing'),
('Pedro Sánchez','pedro.sanchez@mail.com','Operations'),
('Laura Ruiz','laura.ruiz@mail.com','Finance'),
('Carlos Mendoza','carlos.mendoza@mail.com','IT'),
('Daniela Ortiz','daniela.ortiz@mail.com','Sales'),
('Ricardo Flores','ricardo.flores@mail.com','HR'),
('Sofía Castro','sofia.castro@mail.com','Marketing'),
('Miguel Navarro','miguel.navarro@mail.com','Operations'),
('Valentina Ríos','valentina.rios@mail.com','Finance'),
('José Herrera','jose.herrera@mail.com','IT'),
('Camila Peña','camila.pena@mail.com','Sales'),
('Fernando Díaz','fernando.diaz@mail.com','HR'),
('Paula Vega','paula.vega@mail.com','Marketing'),
('Andrés Molina','andres.molina@mail.com','Operations'),
('Natalia Cruz','natalia.cruz@mail.com','Finance'),
('Héctor Romero','hector.romero@mail.com','IT'),
('Gabriela León','gabriela.leon@mail.com','Sales'),
('Iván Paredes','ivan.paredes@mail.com','HR'),
('Alejandra Núñez','alejandra.nunez@mail.com','Marketing'),
('Oscar Medina','oscar.medina@mail.com','Operations'),
('Patricia Salas','patricia.salas@mail.com','Finance'),
('Raúl Campos','raul.campos@mail.com','IT'),
('Lucía Morales','lucia.morales@mail.com','Sales'),
('Diego Fuentes','diego.fuentes@mail.com','HR'),
('Elena Bravo','elena.bravo@mail.com','Marketing'),
('Sergio Torres','sergio.torres@mail.com','Operations');
GO

INSERT INTO Employees (FullName, Position, HireDate)
VALUES
('Carlos Jiménez','IT Support','2022-01-10'),
('María Fernández','IT Support','2022-03-15'),
('Pedro Castillo','Network Technician','2021-11-20'),
('Laura Méndez','Helpdesk Agent','2023-02-01'),
('Juan Rivera','Helpdesk Agent','2023-06-10'),
('Andrea Silva','Systems Administrator','2021-08-05'),
('Miguel Torres','IT Support','2022-09-12'),
('Paola Ramos','Helpdesk Agent','2023-04-18'),
('Daniel Soto','Network Technician','2021-12-30'),
('Sofía Luna','Systems Administrator','2020-07-22');
GO

INSERT INTO Tickets
(Title, Description, Category, Status, Priority, CreatedDate, ResolvedDate, AssignedTo, CustomerID)
VALUES
('Correo no funciona','No envía ni recibe correos','Email','Resolved','High','2025-01-02','2025-01-03',1,1),
('Laptop lenta','Equipo tarda en iniciar','Hardware','In Progress','Medium','2025-01-03',NULL,2,2),
('Error red','Sin conexión a internet','Network','Resolved','High','2025-01-04','2025-01-05',3,3),
('Impresora no imprime','Cola de impresión detenida','Hardware','Open','Low','2025-01-05',NULL,4,4),
('Cambio contraseña','Olvidó contraseña','Access','Resolved','Low','2025-01-06','2025-01-06',5,5),
('VPN no conecta','Error de autenticación','Network','In Progress','High','2025-01-07',NULL,6,6),
('PC no enciende','No da señal de poder','Hardware','Open','Critical','2025-01-08',NULL,7,7),
('Teams falla','No abre la aplicación','Software','Resolved','Medium','2025-01-09','2025-01-10',8,8),
('Pantalla azul','Blue screen al iniciar','Software','In Progress','High','2025-01-10',NULL,9,9),
('Audio no funciona','No se escucha en reuniones','Hardware','Resolved','Low','2025-01-11','2025-01-12',10,10),
('Servidor lento','Acceso muy lento','Infrastructure','Open','High','2025-01-12',NULL,1,11),
('Correo duplicado','Correos llegan dos veces','Email','Resolved','Medium','2025-01-13','2025-01-14',2,12),
('Mouse falla','Doble clic automático','Hardware','Resolved','Low','2025-01-14','2025-01-15',3,13),
('Acceso denegado','No entra al sistema','Access','Resolved','High','2025-01-15','2025-01-16',4,14),
('Impresora red','No conecta a red','Hardware','Open','Medium','2025-01-16',NULL,5,15),
('VPN lenta','Conexión intermitente','Network','In Progress','Medium','2025-01-17',NULL,6,16),
('Error login','Credenciales inválidas','Access','Resolved','High','2025-01-18','2025-01-19',7,17),
('Backup falló','No se ejecutó backup','Infrastructure','Open','Critical','2025-01-19',NULL,8,18),
('Monitor parpadea','Pantalla inestable','Hardware','Resolved','Medium','2025-01-20','2025-01-21',9,19),
('Sistema congelado','No responde','Software','Resolved','High','2025-01-21','2025-01-22',10,20);
GO
