CREATE TRIGGER del_cliente 
AFTER DELETE ON voo
FOR EACH ROW
DELETE FROM piloto 
where piloto.codigo = new.piloto;
DELETE FROM cliente
where cliente.codigo 
in 
(SELECT cliente FROM cliente_voo, 
WHERE new.codigo = cliente_voo.voo);