#!/bin/bash

projectName="Just Bashing"
whereami=$(pwd) 
Fruits=('Apple' 'Banana' 'Orange')

# $1 is the argument passed to the function
# whereami receives the value of $1 which in
# this case is pwd current path
function updateWhereAmI() {
    echo "Number of arguments passed for this function "$#
    whereami=$1 
}

echo "${projectName} is starting..."

echo "you're located at "$whereami

# size of a string
echo "How many chars my project name has: "${#projectName}

#loop through an array
for i in "${Fruits[@]}"; do
    echo "$i"
done

# flow control
# [[ -z STRING ]]	Empty string
# [[ -n STRING ]]	Not empty string
if [[ -z "$projectName" ]]; then
  echo "String is empty"
elif [[ -n "$projectName" ]]; then
  echo "String is not empty"
else
  echo "This never happens"
fi

printf "\n\n\n";

# bashing interacting with rust and passing an argument for
# it to execute

cd afolder;

# pass the pwd as an argument for the updateWhereAmI function
updateWhereAmI $(pwd)

echo "you're located at "$whereami

rustc hello.rs
./hello "hi from bash"




