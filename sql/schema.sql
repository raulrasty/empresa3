USE empresa;


CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL
);

CREATE TABLE proyectos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  fecha_inicio DATE NOT NULL
);

CREATE TABLE contratos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT NOT NULL,
  proyecto_id INT NOT NULL,
  importe DECIMAL(10,2) NOT NULL,
  fecha_contrato DATE NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (proyecto_id) REFERENCES proyectos(id)
);

INSERT INTO clientes(nombre, email)
VALUES 
('Ana Alonso', 'ana@uax.com'),
('Luis García', 'luis@uax.com'),
('María López', 'maria@uax.com');

INSERT INTO proyectos(nombre, fecha_inicio)
VALUES 
('Web corporativa', '2026-01-10'),
('Tienda online', '2026-02-15'),
('Aplicación interna', '2026-03-20');

INSERT INTO contratos(cliente_id, proyecto_id, importe, fecha_contrato)
VALUES
(1, 1, 1200.00, '2026-03-01'),
(2, 2, 2500.00, '2026-03-10'),
(3, 3, 1800.00, '2026-04-01');
