array=(0 1 2 3 4 5 6 7 8 9)

a=0
b=$(( ${#array[@]} -1 ))

for ((a=0; a<b ; a++)) 
do
    x="${array[$a]}"
    array[$a]="${array[$b]}"
    array[$b]="$x"

    (( b-- ))

done

echo "${array[@]}"
