# Restaurant Order System

Sistema híbrido de gestión de pedidos en tiempo real para restaurantes. Meseros registran pedidos desde la app móvil, cocina los recibe en tiempo real y caja procesa los cobros desde el panel web. Arquitectura basada en **Node.js, React, React Native, PostgreSQL** y **Supabase Realtime**.

---

# Arquitectura del sistema

- **Mobile App**: captura de pedidos por meseros y visualización en cocina.  
- **Web App**: panel administrativo para caja y administración.  
- **Backend API**: lógica de negocio y orquestación de eventos.  
- **Base de datos**: PostgreSQL gestionado mediante Supabase.

---

# Estructura del proyecto

```
restaurant-order-system
├── backend/      API REST (Node.js + Express)
├── frontend/     Panel web (React + Vite)
├── mobile/       App Expo/React Native para meseros y cocina
├── database/     Migraciones y seeds SQL
├── docs/         Arquitectura, API, diagramas y modelo de datos
├── scripts/      Utilidades (backup, deploy, restore)
├── start_system.sh
├── LICENSE
├── package.json
└── README.md
```

---

# Puertos del sistema

- Backend API: http://localhost:3000
- Frontend Web: http://localhost:5000
- Mobile App: Expo Dev Server (puerto asignado por Expo)

---

# Tecnologías utilizadas

**Frontend Web**: React, Vite, Axios, Zustand, Tamagui  
**Mobile**: React Native, Expo, React Navigation, Supabase Client  
**Backend**: Node.js, Express, WebSockets / Supabase Realtime, PostgreSQL  
**Base de datos**: PostgreSQL, Supabase

---

# Flujo del sistema

1. El mesero registra un pedido desde la aplicación móvil.  
2. El pedido se envía al backend.  
3. El backend guarda el pedido en PostgreSQL.  
4. Supabase Realtime notifica a la cocina.  
5. Cocina prepara el pedido.  
6. Cocina marca el pedido como listo.  
7. Caja procesa el pago desde el panel web.

---

# Requisitos previos

- Node.js y npm instalados.  
- PostgreSQL accesible (local o gestionado).  
- Cuenta/proyecto en Supabase para habilitar Realtime.  
- psql disponible en la terminal para correr migraciones.

---

# Instalación rápida

Clonar el repositorio:

```bash
git clone https://github.com/AnThony69x/restaurant-order-system.git
cd restaurant-order-system
```

Instalar y preparar todo (Linux/macOS/Git Bash/WSL):

```bash
chmod +x start_system.sh
./start_system.sh
```

El script verifica Node/npm/PostgreSQL, instala dependencias en `backend` y `frontend`, ejecuta migraciones y seeds de `database/` y muestra los comandos para levantar cada servicio.

---

# Configuración manual

## Backend

```bash
cd backend
npm install
npm run dev
# API en http://localhost:3000
```

## Frontend Web

```bash
cd frontend
npm install
npm run dev
# Panel en http://localhost:5000
```

## Mobile (Expo)

```bash
cd mobile
npm install
npx expo start
```

## Base de datos

```bash
cd database
psql restaurant_db < migrations/001_create_tables.sql
psql restaurant_db < migrations/002_create_indexes.sql
psql restaurant_db < seeds/menu_seed.sql
psql restaurant_db < seeds/mesas_seed.sql
```

---

# Documentación

Consulta la carpeta `docs/` para conocer la arquitectura, modelo de base de datos, diagramas y endpoints de la API.

---

# Licencia

MIT License
