#/usr/bin/env bash

# CHEATSHEET
#     array=(1 2 3)                   // Creation. 3 elements
#     ${array[0]}                     // Access
#     ${#array[@]}                    // Length

echo "Arrays Example"

print_array() 
{
    local array_arg=($@)

    # Iterate over array
    for element in ${array_arg[@]}
    do
        echo $element
    done
}

# Basic arrays
array=(1 2 3)

# Access individual elements
echo ${array[0]}

# Iterate over array
for element in ${array[@]}
do
    echo $element
done

# Number of elements
echo "Array elements: " ${#array[@]}

# Add elements
array+=(10)

print_array "${array[@]}"