# Journal de bord du projet encadré
## Seance 1
Création d'un compte GitHub et Ajout d'un SSH key avec les commandes suivants.

Le système de fichiers – Les chemin
/ désigne la racine de l’arbre
∼/ désigne le dossier personnel de l’utilisateur ( “HOME")
./ désigne le dossier courant (working directory )
../ désigne le dossier parent

? peut remplacer n’importe quel caractère (unique)
* peut remplacer n’importe quelle suite de caractères

## Séance 2
• commandes git :
   > git add
   > git status
   > ls -a pour voir si c'est bien un dépôt synchronisé avec git
   > git commit -m "remplir message et ne pas fermer les guillemets. 
   > git push : pousser les modifications
   > git fetch : récupérer journal des modification, les metadonnées du dépôt
   > git pull : pour mettre à jour le dépôt sur l'ordi, récupérer les nouveaux commits
   > git rm : pour supprimer, mais peut revenir si on met à jour le dépôt
   > git log : permet de voir l'ensemble des commits
   > git tag -a -m tagname [commit (si diff du commit courant)]

Pour les exercices : git add . > git commit -m "Message" > git push

Comment pouvez-vous :

    vérifier que vous êtes en retard par rapport à la version en ligne ? git fetch
    répercuter les changements du dépôt sur votre machine ? git merge

## Séance 3

• git reset :

    HEAD : commit actuel
    : étiquette placé sur un commit spécifique
    ~[N] : remonter la flèche de l'ascendance directe ex : ~[1] représente le commit parent => non linéaire
    ^[N] : Nième parent du commit ex: ^[1] : commit parent => linéaire
    git reset HEAD~ : revenir avant le commit actuel, et annule la mise en place --soft HEAD~ ne l'annule pas => fonctionne uniquement sur commit et pas sur fichiers spécifiques
    gti reset --hard : fichier supprimé, retour version HEAD

• git revert : créer un nouveau commit où les changements ont été marqués comme annulés ( : SHA ou tag)

## Séance 4

Pour les exercices :
• Compter le nombre d’annotations par année (2016, 2017 et 2018)

• limiter ce comptage aux lieux (Location),

• sauvegarder ces résultats dans un (seul) fichier,

• établir le classement des lieux les plus cités.

• trouver les annotations les plus fréquentes pour votre mois de naissance, toutes
années confondues.


## Séance 5
Réponse des exercices
Deux commandes pour rendre le fichier exécutable : 
chmod +x Fichier.sh 
>Mais celui-ci ne marche pas sur mon système linux

bash ./Fichier.sh 
>Ça marche


ANNEE=$1
cat ./ann/$ANNEE/*/*.ann 

ls "$1"/"$2"/*.ann

Instructions conditionnelles
>f fichier vrai si le fichier existe
>-d dossier vrai si le dossier existe
>-s fichier vrai si le fichier existe et n’est pas vide Sur des chaînes de caractères
>= ou != tester si deux chaînes sont identiques (=) ou différentes (!=)
>< ou > pour déterminer si in chaîne est avant ou après une autre dans l’ordre alphabétique
>-n chaine vrai si la chaîne n’est pas vide
>-z vrai si la chaîne est vide (ex: argument non fourni)

???Je n'ai pas bien compris le code suivant : 
>while read LINE
>do
 > echo "la ligne est :$LINE"
>done < ./reponses.txt

>echo "on a fini"

Pourquoi il sort les resultats de comptage des locutions ?

### Projet
1. installer sur Linux (terminal) Lynx
2. ouvrir un webpage, ex :
lynx pluriTAL.org

pour récupérer le contenu textuel d'une page pour l'afficher (sans navigation)
>lynx -dump pluriTAL.org
retirer la liste des liens d'une page à l'affichage
>lynx -listonly -dump pluriTAL.org
>lynx -dump -nolist pluriTAL.org>

## Séance 6
### mini-projet en groupe

Aller sur la section "archives" du site Plurital : 
http://www.tal.univ-paris3.fr/plurital/archives.html

construction de tableaux
il faudra avoir uniquement des codes 200 (réussite) dans le tableau
avoir un seul encodage au mieux UTF-8

### Exercice et les codes

EX1 :

si espaces dans les urls alors ça posera problème
transformer "urls/fr.txt" en paramètre du script
remplacer par $1
ajout du if [ $# -ne 1 ]

EX2 :

Pour extraire le code HTTP de réponse à la requête : code=$(curl -o /dev/null -s -w "%{http_code}\n" -L $line)
>-o /dev/null : spécifier qu'on n'affiche pas le contenu à l'écran
>-s : mode silencieux (pas d'info de progression de la requête)
>-w "%{http_code}\n" : spécifier le format de sortie -> uniquement le code HTTP
>-L: suivre les redirections et corriger erreur

Pour extraire l'encodage : charset=$(curl -s -I "$line" | grep -i "Content-Type" | sed -n 's/.charset=([^;]).*/\1/p')
>-I : pour afficher uniquement les entêtes
>grep -i "Content-Type" : recherche la ligne d'entête qui contient Content-Type qui contient l'encodage
>sed -n : recherche la regex dans la ligne
>'s/.charset=([^;]).*/\1/p' : capture la valeur de l'encodage (tout ce qui suit "charset=" jusqu'au prochain ;)
s/ : début substitution
puis remplace la ligne par la valeur capturée, qui est stockée dans \1
-n : supprime les lignes non modifiées
p : affiche la ligne modifiée

## Seance 7
Correction des exercices :
curl -s -I -W "%{http_code}" -o /dev/null https://fr.wikipedia.org/wiki/Robot
curl -s -I https://fr.wikipedia.org/wiki/Robot|

curl -s -I -L -w "%{http_code}" fr.wikipedia.org/wiki/Robot_d%27indexation | grep -P -o "charset=\S+" 
#

curl -s -I -L -w "%{http_code}" fr.wikipedia.org/wiki/Robot_d%27indexation | grep -P -o "charset=\S+" | cut -d"=" -f1
#récupérer la première colone 

curl -s -I -L -w "%{http_code}" fr.wikipedia.org/wiki/Robot_d%27indexation | grep -P -o "charset=\S+" | cut -d"=" -f2
#récupérer la deuxième colone 

Exercices : Candide
Nettoyage du fichier avec grep -o -E '\w+' | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]'
Mots les plus fréquents avec cat ./fichier_nettoye.txt | sort | uniq -c | sort -nr | head -n $nb_mots
Bigrammes les plus fréquents avec paste <(head -n -1 fichier_nettoye_bigrammes.txt) <(tail -n +2 fichier_nettoye_bigrammes.txt) > bigrammes.txt
