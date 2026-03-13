# Arquitectura del Sistema

## Descripción general

El sistema es una plataforma de gestión de pedidos en tiempo real para restaurantes.
Permite a los meseros registrar pedidos desde una tablet, enviarlos automáticamente a la cocina y gestionar el cobro desde la caja.

El sistema utiliza una arquitectura cliente-servidor con comunicación en tiempo real.

---

## Componentes del sistema

### Frontend

Aplicación móvil desarrollada con React Native.

Responsabilidades:

- Gestión de mesas
- Toma de pedidos
- Visualización de pedidos en cocina
- Gestión de pagos en caja

---

### Backend

Servidor desarrollado con Node.js y Express.

Responsabilidades:

- Gestión de lógica de negocio
- Control de pedidos
- Gestión de usuarios
- Comunicación con la base de datos

---

### Base de datos

Sistema de base de datos PostgreSQL gestionado por Supabase.

Responsabilidades:

- Almacenamiento de pedidos
- Gestión de mesas
- Gestión de productos del menú
- Registro de ventas

---

### Realtime

Supabase Realtime permite que los pedidos se actualicen automáticamente en la cocina y caja sin recargar la aplicación.

---

## Arquitectura general

Mesero (Tablet)
        │
        │ crea pedido
        ▼
Frontend React Native
        │
        │ request
        ▼
Backend Node.js
        │
        │ consulta
        ▼
PostgreSQL (Supabase)
        │
        │ realtime
        ▼
Pantalla Cocina