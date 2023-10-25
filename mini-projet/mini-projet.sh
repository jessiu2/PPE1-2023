if [$# -ne 1]
  echo "Un argument attendu exactement"
  
  exit
fi
   if [-f $1]
   then 
     echo "on a bien un fichier"
     
else
     echo "on attend un fichiers qui existe"
     exit
fi


file=$1

while read -r line;
do
   echo ${line};
done < "$file";

