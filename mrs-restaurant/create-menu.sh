#!/bin/bash

# Script pour créer facilement un nouveau menu de la semaine
# Usage: ./create-menu.sh "1 juillet" "7 juillet"

if [ $# -ne 2 ]; then
    echo "Usage: $0 'date_debut' 'date_fin'"
    echo "Exemple: $0 '1 juillet' '7 juillet'"
    exit 1
fi

START_DATE="$1"
END_DATE="$2"

# Créer le nom du fichier (slug)
SLUG=$(echo "$START_DATE-$END_DATE" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/é/e/g' | sed 's/è/e/g' | sed 's/à/a/g')
FILENAME="content/menus/semaine-$SLUG.md"

# Date ISO pour Hugo
ISO_DATE=$(date +%Y-%m-%d)

cat > "$FILENAME" << MENUEOF
---
title: "Menu de la semaine"
date: $ISO_DATE
week_start: "$START_DATE"
week_end: "$END_DATE"
draft: false
type: "menus"

# Menu structuré par jour
weekly_menu:
  lundi:
    - "Plat 1 du lundi"
    - "Plat 2 du lundi"
  mardi:
    - "Plat 1 du mardi"
    - "Plat 2 du mardi"
  mercredi:
    - "Plat 1 du mercredi"
    - "Plat 2 du mercredi"
  jeudi:
    - "Plat 1 du jeudi"
    - "Plat 2 du jeudi"
  vendredi:
    - "Plat 1 du vendredi"
    - "Plat 2 du vendredi"
  samedi:
    - "Plat 1 du samedi"
    - "Plat 2 du samedi"
  dimanche:
    - "Plat 1 du dimanche"
    - "Plat 2 du dimanche"

# Informations spéciales (optionnel)
special_info: ""

# Métadonnées pour le SEO
categories: ["menus", "restaurant"]
tags: ["menu-hebdomadaire", "cuisine"]
---

Menu de la semaine du $START_DATE au $END_DATE.
MENUEOF

echo "Menu créé: $FILENAME"
echo "N'oubliez pas de modifier les plats dans le fichier !"

# Ouvrir le fichier dans l'éditeur par défaut (optionnel)
if command -v code &> /dev/null; then
    code "$FILENAME"
elif command -v nano &> /dev/null; then
    nano "$FILENAME"
fi
