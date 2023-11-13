#!/bin/bash

if [ "$#" -ne 1 ]; 
  then
    echo "Ce script nécessite un argument : chemin du fichier txt"
    exit 
fi

input_file=$1
cat "$1" | tr '[:punct:]' ' '| tr '[:upper:]' '[:lower:]' | tr -s ' ' | tr ' ' '\n' | grep -v '^$' #| head -n 10

# cat $1						>>> lire le fichier
# tr '[:punct:]' ' ' 			>>> supprimer la ponctuation et remplacer par un espace
# tr '[:upper:]' '[:lower:]' 	>>> mettre en minuscules
# tr -s ' ' 					>>> remplacer les espaces consécutifs par un seul espace avec l'option -s (Squeeze multiple occurrences of the characters into a single instance of the character)
# tr ' ' '\n' 					>>> remplacer les espaces par des sauts de ligne
# grep -v '^$' 				>>> exclure les lignes vides avec l'option -v, --invert-match

