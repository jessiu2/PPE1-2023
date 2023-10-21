#!/bin/bash

#créer un script pour établir le classement des lieux les plus cités
#prendre en argument l’année, le mois et le nombre de lieux à afficher
#accepter * pour l’année et le mois

if [ $# -ne 3 ]; then
    echo "Ce script nécessite trois arguments : année, mois, nombre de lieux à afficher"
    exit
fi

year=$1
month=$2
num_places=$3

if [ ! -d "./Fichiers/ann/$1/$2" ]
then
    echo "Le répertoire du mois $2 n'existe pas."
    exit
fi

if [ ! -d "./Fichiers/ann/$1" ]
then
    echo "Le répertoire de l'année $1 n'existe pas."
    exit
fi

matched_places=$(grep -E Fichiers/ann/$1/$2/*.ann | cut -d ':' -f 3 | sort | uniq -c | sort -rn | head -n $num_places)

# 输出结果
echo "Classement des $num_places lieux les plus cités en $month/$year :"
echo "$matched_places"
