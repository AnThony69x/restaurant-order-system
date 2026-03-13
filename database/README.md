# Base de Datos

Esta carpeta contiene todo lo relacionado con la estructura y configuración de la base de datos del sistema de pedidos del restaurante.

El sistema utiliza PostgreSQL como motor de base de datos.

---

# Estructura

migrations  
Contiene scripts de migración para crear y modificar la estructura de la base de datos.

seeds  
Contiene datos iniciales para poblar la base de datos.

esquema.sql  
Archivo que contiene el esquema completo de la base de datos.

---

# Migraciones

Las migraciones permiten crear la estructura de la base de datos paso a paso.

001_create_tables.sql  
Crea todas las tablas del sistema.

002_create_indexes.sql  
Crea índices para optimizar consultas.

---

# Seeds

Los seeds permiten insertar datos iniciales para pruebas.

menu_seed.sql  
Productos iniciales del menú.

mesas_seed.sql  
Mesas iniciales del restaurante.

---

# Tablas principales

usuarios  
mesas  
categorias  
menu  
pedidos  
pedido_items

---

# Motor de base de datos

PostgreSQL

Compatible con Supabase.