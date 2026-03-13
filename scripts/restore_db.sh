#!/bin/bash

DB_NAME="restaurant_db"
BACKUP_FILE=$1

psql $DB_NAME < $BACKUP_FILE

echo "Base de datos restaurada"