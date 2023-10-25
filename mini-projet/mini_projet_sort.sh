    if [$# -ne 1]
  echo "Un argument attendu exactement"
  
  exit
else
   if [-f $1]
   then 
     echo "on a bien un fichier"
else
     echo "on attend un fichiers qui existe"
     exit
   fi
fi


file=$1
lineo=1

while read -r line;
do
   echo -e "${lineno}\t${line}"
   lineno=$(expr $lineno + 1)
done < "$file";