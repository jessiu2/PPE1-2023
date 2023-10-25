file="$1"

while IFS= read -r line;
do
number=$(echo "$line" | awk="$1")
echo "$number   $line";

done < "$file"
    