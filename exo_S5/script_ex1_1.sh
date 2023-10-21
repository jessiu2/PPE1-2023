#!/bin/bash

#Écrire un script qui compte les entités pour une année un type d’entité donnés en argument du programme.

if [ $# -ne 2 ]
then
    echo "Ce script nécessite deux arguments : année et type d'entité"
    exit 
fi

year=$1
entity_type=$2

if [ ! -d "~/PPE1-2023/Fichiers/ann/$year" ]
then
    echo "Le répertoire de l'année $year n'existe pas."
    exit  
fi

nbEntity=$(grep -c "^$entity_type$" "./Fichiers/ann/$year/*/*.ann")
echo "Nombre d'annotations de $typeEntite en $year : $nbEntity"
