echo "Enter a number"
read n
result=1

for ((  counter=2; counter<$n; counter++ ))
do
    if  [  $(($n%$counter))  -eq 0 ]
    then
        result=$(($result+1))
    fi
done
if [  $result -eq 1 ]
then
  echo "its a prime number"
else
  echo "its not a prime number"
fi
