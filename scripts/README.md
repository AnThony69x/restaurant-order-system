# Scripts del Sistema

Esta carpeta contiene scripts de automatización utilizados para administrar la base de datos y el despliegue del sistema.

---

# Scripts disponibles

backup_db.sh  
Realiza un respaldo completo de la base de datos.

restore_db.sh  
Restaura un respaldo de la base de datos.

deploy.sh  
Script para desplegar la aplicación.

---

# Requisitos

PostgreSQL instalado  
Permisos de ejecución en Linux o Mac

---

# Ejecutar scripts

Dar permisos de ejecución

chmod +x backup_db.sh
chmod +x restore_db.sh
chmod +x deploy.sh

---

# Uso

Backup de base de datos

./backup_db.sh

Restaurar base de datos

./restore_db.sh archivo_backup.sql

Desplegar sistema

./deploy.sh