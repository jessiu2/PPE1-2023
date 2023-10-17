
#Ecrire un script qui compte les entités pour une année
ANNEE=$1
TYPE=$2

NB_TYPE=$(cat ./$ANNEE/*/* | grep $TYPE | wc -l)

echo "Nombre d'annotations de type $TYPE en $ANNEE : $NB_TYPE. "

# Lancer le script precedent 3 fois, une fois par chaque année

ENTITY_TYPE=$1
FOLDER_PATH=$2

echo -n "Nombre d'entités de type $ENTITY_TYPE en 2016:"
./exo1a_slide29.sh $ENTITY_TYPE $FOLDER_PATH 2016
echo -n "Nombre d'entités de type $ENTITY_TYPE en 2017:"
./exo1a_slide29.sh $ENTITY_TYPE $FOLDER_PATH 2017
echo -n "Nombre d'entités de type $ENTITY_TYPE en 2018:"
./exo1a_slide29.sh $ENTITY_TYPE $FOLDER_PATH 2018


