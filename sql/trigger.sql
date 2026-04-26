USE empresa;

DELIMITER $$

CREATE TRIGGER trg_email_no_vacio
BEFORE INSERT ON clientes
FOR EACH ROW
BEGIN
  IF NEW.email IS NULL OR NEW.email = '' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El email no puede estar vacío';
  END IF;
END$$

-- Trigger 2: importe positivo
CREATE TRIGGER trg_importe_positivo
BEFORE INSERT ON contratos
FOR EACH ROW
BEGIN
  IF NEW.importe <= 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El importe debe ser mayor que 0';
  END IF;
END$$

DELIMITER ;
