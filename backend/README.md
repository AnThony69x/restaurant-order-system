# Backend - Restaurant Order System

API REST encargada de gestionar pedidos, mesas y productos del menú del restaurante.

---

# Puerto del servidor

http://localhost:3000

---

# Tecnologías

Node.js  
Express  
Supabase  
PostgreSQL

---

# Estructura del proyecto

src

controllers  
Controladores de la API

services  
Lógica de negocio

repositories  
Acceso a datos

routes  
Definición de endpoints

middlewares  
Middlewares del sistema

config  
Configuraciones del servidor

server.ts  
Punto de entrada del backend

---

# Instalación

cd backend

npm install

---

# Ejecutar servidor

npm run dev

---

# Endpoints principales

GET /api/mesas

GET /api/menu

POST /api/pedidos

PUT /api/pedidos/:id/estado

PUT /api/pedidos/:id/cerrar

---

# Base de datos

El sistema utiliza PostgreSQL gestionado por Supabase.

Tablas principales

usuarios  
mesas  
menu  
categorias  
pedidos  
pedido_items

---

# Realtime

Supabase permite actualizar automáticamente los pedidos en la pantalla de cocina sin necesidad de recargar la aplicación.