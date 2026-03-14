#!/bin/bash

set -e

PROJECT_NAME="Restaurant Order System"
DB_NAME="restaurant_db"

echo "======================================"
echo "Inicializando $PROJECT_NAME"
echo "======================================"

echo ""
echo "Verificando dependencias..."

# Verificar Node
if ! command -v node &> /dev/null
then
    echo "Error: Node.js no está instalado."
    exit 1
fi

# Verificar npm
if ! command -v npm &> /dev/null
then
    echo "Error: npm no está instalado."
    exit 1
fi

# Verificar PostgreSQL
if ! command -v psql &> /dev/null
then
    echo "Error: PostgreSQL no está instalado."
    exit 1
fi

echo "Dependencias verificadas correctamente"

echo ""
echo "--------------------------------------"
echo "Instalando dependencias del proyecto"
echo "--------------------------------------"

npm install

echo "Dependencias instaladas"

echo ""
echo "--------------------------------------"
echo "Instalando dependencias Backend"
echo "--------------------------------------"

cd backend
npm install
cd ..

echo "Backend listo"

echo ""
echo "--------------------------------------"
echo "Instalando dependencias Frontend"
echo "--------------------------------------"

cd frontend
npm install
cd ..

echo "Frontend listo"

echo ""
echo "--------------------------------------"
echo "Instalando dependencias Mobile"
echo "--------------------------------------"

cd mobile
npm install
cd ..

echo "Mobile listo"

echo ""
echo "--------------------------------------"
echo "Inicializando Base de Datos"
echo "--------------------------------------"

cd database

echo "Verificando base de datos..."

if ! psql -lqt | cut -d \| -f 1 | grep -qw $DB_NAME; then
    echo "Creando base de datos $DB_NAME..."
    createdb $DB_NAME
else
    echo "Base de datos ya existe"
fi

echo ""
echo "Ejecutando migraciones..."

psql $DB_NAME < migrations/001_create_tables.sql
psql $DB_NAME < migrations/002_create_indexes.sql

echo ""
echo "Insertando datos iniciales..."

psql $DB_NAME < seeds/menu_seed.sql
psql $DB_NAME < seeds/mesas_seed.sql

cd ..

echo ""
echo "======================================"
echo "Sistema inicializado correctamente"
echo "======================================"

echo ""
echo "Para iniciar el sistema:"
echo ""

echo "Backend"
echo "npm run dev:backend"

echo ""
echo "Frontend"
echo "npm run dev:frontend"

echo ""
echo "Mobile"
echo "npm run dev:mobile"

echo ""
echo "Servicios disponibles en:"
echo ""
echo "Backend API:"
echo "http://localhost:3000"
echo ""
echo "Frontend Web:"
echo "http://localhost:5000"
echo ""
echo "Mobile:"
echo "Expo Dev Server"