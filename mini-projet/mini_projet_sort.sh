file="$1"
count=1

while IFS= read -r line;
do
line_with_number=$(echo "$line" | sed -E 's|(https://)|'"$count"'\1|')
echo "$count    $line_with_number";
count=$((count+1));

done < "$file"
    