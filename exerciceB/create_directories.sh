#!/bin/bash

# Exercice B - Création automatique des répertoires

BASE="$HOME"
LOG="$BASE/SCRIPTS/creation.log"

DOSSIERS=("app" "sauvegardes" "my_projects" "archives")

echo "=== Début : $(date) ===" >> "$LOG"

for dossier in "${DOSSIERS[@]}"
do
    mkdir -p "$BASE/$dossier"
    echo "$(date) - Dossier $dossier vérifié ou créé" | tee -a "$LOG"
done

echo "=== Fin : $(date) ===" >> "$LOG"
