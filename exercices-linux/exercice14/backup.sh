#!/bin/bash

SOURCE="$HOME/nova-it/production"
DESTINATION="$HOME/nova-it/archives/sauvegardes"
LOG="$HOME/nova-it/archives/backup.log"
DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p "$DESTINATION"

echo "[$(date)] Debut de la sauvegarde" >> "$LOG"

if tar -czf "$DESTINATION/backup_$DATE.tar.gz" -C "$HOME/nova-it" production; then
    echo "[$(date)] Sauvegarde reussie" >> "$LOG"
else
    echo "[$(date)] ERREUR : sauvegarde echouee" >> "$LOG"
    exit 1
fi
