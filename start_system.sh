#!/bin/bash

echo "======================================"
echo "Inicializando Restaurant Order System"
echo "======================================"

# verificar node
if ! command -v node &> /dev/null
then
    echo "Node.js no está instalado"
    exit
fi

# verificar npm
if ! command -v npm &> /dev/null
then
    echo "npm no está instalado"
    exit
fi

# verificar postgres
if ! command -v psql &> /dev/null
then
    echo "PostgreSQL no está instalado"
    exit
fi

echo "Dependencias básicas verificadas"

echo ""
echo "--------------------------------------"
echo "Instalando dependencias Backend"
echo "--------------------------------------"

cd backend
npm install

echo ""
echo "Backend listo"

echo ""
echo "--------------------------------------"
echo "Instalando dependencias Frontend"
echo "--------------------------------------"

cd ../frontend
npm install

echo ""
echo "Frontend listo"

echo ""
echo "--------------------------------------"
echo "Inicializando Base de Datos"
echo "--------------------------------------"

cd ../database

echo "Ejecutando migraciones..."

psql restaurant_db < migrations/001_create_tables.sql
psql restaurant_db < migrations/002_create_indexes.sql

echo "Insertando datos iniciales..."

psql restaurant_db < seeds/menu_seed.sql
psql restaurant_db < seeds/mesas_seed.sql

echo ""
echo "Base de datos inicializada"

cd ..

echo ""
echo "======================================"
echo "Sistema listo"
echo "======================================"

echo ""
echo "Para iniciar el sistema ejecuta:"
echo ""
echo "Backend:"
echo "cd backend && npm run dev"
echo ""
echo "Frontend:"
echo "cd frontend && npm start"
echo ""
echo "API disponible en:"
echo "http://localhost:3000"
echo ""
echo "Frontend disponible en:"
echo "http://localhost:5000"