#!/bin/bash

echo "Instalando dependencias backend..."
cd backend
npm install

echo "Instalando dependencias frontend..."
cd ../frontend
npm install

echo "Sistema listo para ejecutar"