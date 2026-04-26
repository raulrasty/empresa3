USE empresa;

CREATE USER IF NOT EXISTS 'admin_empresa'@'%' IDENTIFIED BY 'Admin123';
GRANT ALL PRIVILEGES ON empresa.* TO 'admin_empresa'@'%';

CREATE USER IF NOT EXISTS 'lector'@'%' IDENTIFIED BY 'Read123';
GRANT SELECT ON empresa.* TO 'lector'@'%';

FLUSH PRIVILEGES;
