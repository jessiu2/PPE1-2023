#!/bin/bash

fichier="$1"
nb_mots="$2"

if [ -z "$nb_mots" ]
then
    nb_mots=25
fi

./exo1.sh "$fichier" > texte_frequence.txt


if [ -z "$fichier" ]
then
    echo "Entrez un nom de fichier (obligatoire) et le nombre de mots que vous souhaitez afficher (optionnel)"
else
    echo "Mots les plus fréquents : "
    cat ./texte_frequence.txt | sort | uniq -c | sort -nr | head -n $nb_mots
fi
