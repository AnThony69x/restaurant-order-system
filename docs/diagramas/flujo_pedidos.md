# Flujo de pedidos

## Flujo general

1. El mesero selecciona una mesa.
2. El mesero agrega productos al pedido.
3. El pedido se envía al sistema.
4. La cocina recibe el pedido automáticamente.
5. La cocina prepara el pedido.
6. La cocina marca el pedido como listo.
7. El mesero entrega el pedido.
8. La caja cobra el pedido.

---

## Flujo técnico

Tablet Mesero
     │
     │ crear pedido
     ▼
Backend API
     │
     ▼
Base de Datos
     │
     │ realtime
     ▼
Pantalla Cocina
     │
     ▼
Caja