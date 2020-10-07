CREATE TRIGGER add_voo 
AFTER INSERT on voo
FOR EACH ROW
UPDATE piloto p
SET num_voos = num_voos + 1
WHERE p.codigo = new.cod_piloto;