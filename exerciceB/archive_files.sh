#!/bin/bash

SOURCE="$HOME/my_projects"
DEST="$HOME/archives"
DATE=$(date +%Y%m%d)

mkdir -p "$DEST"

for fichier in "$SOURCE"/fichier*_"$DATE"_*.txt
do
    [ -f "$fichier" ] || continue
    mv "$fichier" "$DEST/"
    echo "$(date) : $(basename "$fichier") archivé" >> "$HOME/SCRIPTS/cron.log"
done
