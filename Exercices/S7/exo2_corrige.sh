#!/bin/bash

FICHIER="$1"
if [-z "$2"]
then
   TOPN=25
else
   TOPN="$2"

fi
if ![["$TOPN“ =~ ^0*[1-9][0-9]*$]]
then 
   echo "donnez moi un chiffre !"
  exit
fi

echo "$1" exo1_corrige.sh  | sort | uniq -c | sort -nr | head -n | less
