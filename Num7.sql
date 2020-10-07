CREATE TRIGGER add_passageiro
AFTER INSERT on cliente_voo
FOR EACH ROW
UPDATE voo
SET num_passageiros = num_passageiros + 1
WHERE NEW.voo = voo_cod;