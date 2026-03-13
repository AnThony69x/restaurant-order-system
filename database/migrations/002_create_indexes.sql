CREATE INDEX idx_pedidos_mesa
ON pedidos(mesa_id);

CREATE INDEX idx_pedido_items_pedido
ON pedido_items(pedido_id);

CREATE INDEX idx_menu_categoria
ON menu(categoria_id);