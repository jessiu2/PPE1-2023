#!/bin/bash

if [ "$#" -ne 1 ]; 
  then
    echo "Usage: $0 dossier_de_travail/candide.txt"
    exit 1
fi

input_file="$1"

# Étape 1: Récupérer le fichier et le copier vers le dossier de travail
git pull origin master
cp "$input_file"  dossier_de_travail/candide.txt

# Étape 2: Transformer le texte pour obtenir un mot par ligne
grep -oE '\w+' dossier_de_travail/$(basename "$input_file") > mots_par_ligne.txt

# Étape 3: S’assurer que le texte est bien nettoyé
tr -d '[:punct:]' < mots_par_ligne.txt | tr '[:upper:]' '[:lower:]' > texte_nettoye.txt

# Afficher le résultat sur la sortie standard
cat texte_nettoye.txt

# Nettoyer les fichiers temporaires (facultatif)
rm mots_par_ligne.txt texte_nettoye.txt

