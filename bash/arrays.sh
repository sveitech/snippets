#!/usr/bin/env bash

# CHEATSHEET
#     array=(1 2 3)                   // Creation. 3 elements
#     ${array[0]}                     // Access
#     ${#array[@]}                    // Length

echo "Arrays Example"

# Bash has no native support for passing arrays to functions.
# Instead all entries in the array must be expanded, and then
# re-created into an array inside the function.
#
# At all times, use "" around the array elements, to prevent
# word-splitting (i.e. maintain any special characters).
print_array() {
    local array_arg=("$@")

    # Iterate over array
    for element in "${array_arg[@]}"
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

# Passing an array like this (without qoutes) performs word-splitting (IFS).
print_array ${array[@]}

array_of_text=("hello there" "some address" "more info to come")

# Expands the elements around word-boundaries (i.e. 8 items)
print_array ${array_of_text[@]}

# Preserves the elements with special characters (i.e. 3 items)
print_array "${array_of_text[@]}"
