USE empresa;

CREATE OR REPLACE VIEW v_clientes AS
SELECT nombre, email
FROM clientes;

-- Vista avanzada con JOIN
CREATE OR REPLACE VIEW v_contratos_clientes AS
SELECT 
  c.nombre AS cliente,
  p.nombre AS proyecto,
  co.importe,
  co.fecha_contrato
FROM contratos co
JOIN clientes c ON co.cliente_id = c.id
JOIN proyectos p ON co.proyecto_id = p.id;
