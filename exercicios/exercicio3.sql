SELECT 
clientes.email_address,
pedidos.id_pedido,
pedidos.id_cliente,
pedidos.sku_pedido,
pedidos.qtd,
pedidos.dt_pedido
FROM gentrop.pedidos
INNER JOIN gentrop.clientes 
ON pedidos.id_cliente = clientes.id_cliente
WHERE pedidos.id_cliente IN
	( SELECT pedidos.id_cliente
	FROM gentrop.pedidos
	group by id_cliente
	having count(*) >= 2
	)
    ORDER BY id_cliente