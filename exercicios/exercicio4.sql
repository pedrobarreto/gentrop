SELECT COUNT(dt_pedido) as total_pedidos_2019
FROM gentrop.pedidos WHERE dt_pedido >= '2019-01-01' AND dt_pedido <= '2019-12-31';