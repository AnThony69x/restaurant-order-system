# Modelo de Base de Datos

La base de datos está diseñada para gestionar pedidos de restaurante en tiempo real.

---

# Tablas principales

## usuarios

Representa a los trabajadores del restaurante.

Campos:

- id
- nombre
- rol
- email
- password

Roles posibles:

- mesero
- cocina
- caja
- administrador

---

## mesas

Representa las mesas del restaurante.

Campos:

- id
- numero
- estado

Estados:

- libre
- ocupada

---

## categorias

Clasificación de productos del menú.

Campos:

- id
- nombre

Ejemplo:

- Bebidas
- Platos fuertes
- Entradas

---

## menu

Productos disponibles.

Campos:

- id
- nombre
- precio
- categoria_id
- disponible

---

## pedidos

Representa un pedido realizado por una mesa.

Campos:

- id
- mesa_id
- mesero_id
- estado
- total
- fecha_creacion

Estados:

- nuevo
- en_preparacion
- listo
- entregado
- pagado

---

## pedido_items

Productos dentro de un pedido.

Campos:

- id
- pedido_id
- producto_id
- cantidad
- precio