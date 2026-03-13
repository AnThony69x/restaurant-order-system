#!/bin/bash

DB_NAME="restaurant_db"
BACKUP_FILE="backup_$(date +%Y%m%d_%H%M%S).sql"

pg_dump $DB_NAME > $BACKUP_FILE

echo "Backup creado: $BACKUP_FILE"