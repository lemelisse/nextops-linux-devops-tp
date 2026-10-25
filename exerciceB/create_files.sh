#!/bin/bash

DOSSIER="$HOME/my_projects"
DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p "$DOSSIER"

for i in 1 2 3
do
    touch "$DOSSIER/fichier${i}_${DATE}.txt"
    echo "$(date) : fichier${i}_${DATE}.txt créé" >> "$HOME/SCRIPTS/cron.log"
done
