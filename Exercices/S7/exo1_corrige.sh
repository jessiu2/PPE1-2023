#!/bin/bash

if [ ! -f "$1"] 
  then
    echo "text2colonne: Pas de fichier donné en argument !"
    exit 1
fi

FICHIER="$1"
cat "$FICHIER" | grep -P -o '\p{Latin}+' | tr '[:lower:]' '[:upper:]' | tr 'ÉÀÈ' 'éàè'| less
