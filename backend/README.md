# Backend - Restaurant Order System

API REST encargada de gestionar la lógica del sistema de pedidos del restaurante.

Este backend permite gestionar pedidos, mesas, productos y estados del pedido, además de proporcionar comunicación en tiempo real con la cocina.

---

# Tecnologías

Node.js  
Express  
PostgreSQL  
Supabase  
WebSockets  
JWT Authentication  

---

# Funcionalidades

Gestión de pedidos  
Gestión de mesas  
Gestión de menú  
Gestión de usuarios  
Estados de pedido  
Comunicación en tiempo real con cocina  

---

# Arquitectura del backend

```
backend

src
│
├── controllers
├── services
├── routes
├── models
├── middlewares
├── config
├── realtime
└── utils

server.js
```

---

# API Base

http://localhost:3000/api

---

# Endpoints principales

Pedidos

POST /orders  
GET /orders  
PUT /orders/:id  
DELETE /orders/:id  

Mesas

GET /tables  
POST /tables  

Productos

GET /menu  
POST /menu  

---

# Sistema en tiempo real

El backend utiliza **Supabase Realtime** para notificar eventos como:

Nuevo pedido  
Pedido actualizado  
Pedido listo  

Esto permite que cocina y caja reciban actualizaciones instantáneamente.

---

# Ejecutar backend

Instalar dependencias

npm install

Ejecutar servidor

npm run dev
