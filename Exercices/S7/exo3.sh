#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Ce script necessite un argument:chemin du fichier txt (le nombre de bigrammes à afficher est optionnel)"
    exit 
fi

input_file=$(./exo1.sh "$1")
nb_bigrammes=${2:-25}

echo "$input_file" | paste -d ''--| uniq -c | sort -nr | head -n "$nb_bigrammes" > frequences_bigrammes.txt

cat frequences_bigrammes.txt

