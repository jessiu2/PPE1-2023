N=0
while [ $N -lt 10 ] #-lt less than
do
  echo "on en est a $N"
  N=$(expr $N + 1)
done

echo "on a fini" 
