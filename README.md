# Restaurant Order System

Sistema de gestión de pedidos en tiempo real para restaurantes.

Este sistema permite a los meseros registrar pedidos desde una tablet, enviarlos automáticamente a cocina y gestionar el cobro desde caja.

---

# Arquitectura del sistema

El sistema está compuesto por tres capas principales:

Frontend: Aplicación React Native  
Backend: API REST con Node.js y Express  
Base de datos: PostgreSQL mediante Supabase

---

# Estructura del proyecto

restaurant-order-system

backend  
frontend  
database  
docs  
scripts  

.gitignore  
LICENSE  
package.json  
README.md  

---

# Puertos del sistema

Frontend: http://localhost:5000

Backend API: http://localhost:3000

---

# Tecnologías utilizadas

Frontend

- React Native
- Expo
- React Navigation
- Zustand
- Supabase Client

Backend

- Node.js
- Express
- Supabase
- PostgreSQL

Base de datos

- PostgreSQL
- Supabase Realtime

---

# Flujo del sistema

1. El mesero toma un pedido desde la tablet.
2. El pedido se envía al backend.
3. El backend lo guarda en la base de datos.
4. Supabase Realtime notifica a la cocina.
5. La cocina prepara el pedido.
6. El pedido se marca como listo.
7. Caja realiza el cobro.

---

# Instalación del proyecto

Clonar repositorio

git clone https://github.com/AnThony69x/restaurant-order-system.git

Entrar al proyecto

cd restaurant-order-system

---

# Ejecutar Backend

cd backend

npm install

npm run dev

Servidor disponible en:

http://localhost:3000

---

# Ejecutar Frontend

cd frontend

npm install

npm start

Aplicación disponible en:

http://localhost:5000

---

# Documentación

La documentación técnica del proyecto se encuentra en:

docs/

Arquitectura del sistema  
Modelo de base de datos  
API endpoints  
Diagramas del sistema

---

# Licencia

MIT License