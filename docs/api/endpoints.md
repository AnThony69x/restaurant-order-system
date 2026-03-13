# Endpoints de la API

## Base URL

http://localhost:3000/api

---

# Mesas

## Obtener mesas

GET /mesas

Respuesta:

[
 {
   "id": 1,
   "numero": 1,
   "estado": "libre"
 }
]

---

# Menú

## Obtener productos

GET /menu

---

# Pedidos

## Crear pedido

POST /pedidos

Body:

{
  "mesa_id": 1,
  "mesero_id": 3,
  "items": [
    {
      "producto_id": 5,
      "cantidad": 2
    }
  ]
}

---

## Obtener pedidos activos

GET /pedidos/activos

---

## Actualizar estado pedido

PUT /pedidos/:id/estado

Body:

{
  "estado": "en_preparacion"
}

---

## Cerrar pedido

PUT /pedidos/:id/cerrar