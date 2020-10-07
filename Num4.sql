CREATE TRIGGER add_milhas
AFTER INSERT ON cliente
FOR EACH ROW 
INSERT INTO milhas(cod_cliente, quantidade) values(NEW.codigo, 0);