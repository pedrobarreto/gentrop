SELECT 
clientes.email_address,
pedidos.id_pedido,
pedidos.id_cliente,
pedidos.sku_pedido,
pedidos.qtd,
pedidos.dt_pedido
FROM ( gentrop.pedidos
INNER JOIN gentrop.clientes ON pedidos.id_cliente = clientes.id_cliente)
GROUP BY clientes.id_cliente
HAVING COUNT(pedidos.id_cliente) >= 2;




