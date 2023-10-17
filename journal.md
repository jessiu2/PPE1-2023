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
    git add
    git status
    ls -a pour voir si c'est bien un dépôt synchronisé avec git
    git commit -m "remplir message et ne pas fermer les guillemets. 
    git push : pousser les modifications
    git fetch : récupérer journal des modification, les metadonnées du dépôt
    git pull : pour mettre à jour le dépôt sur l'ordi, récupérer les nouveaux commits
    git rm : pour supprimer, mais peut revenir si on met à jour le dépôt
    git log : permet de voir l'ensemble des commits
    git tag -a -m tagname [commit (si diff du commit courant)]

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


