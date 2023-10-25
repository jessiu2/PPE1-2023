#!/bin/bash

#Écrire un second script qui lance le script précédent trois fois, une fois pour chaque années, en prenant le type d’entité en argument.

if [ $# -ne 1 ]
then
    echo "Ce script nécessite un argument : le type d'entité"
    exit  
fi

chmod +x script_ex1_1.sh

entity_type=$1

./script_ex1_1.sh 2016 "$entity_type"
./script_ex1_1.sh 2017 "$entity_type"
./script_ex1_1.sh 2018 "$entity_type"
