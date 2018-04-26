#!/bin/bash
variable=5
echo $variable
echo ${variable} + h
echo "The value of variable is $variable"
echo 'The value of variable is $variable'
echo "The contents of the current directory is `ls`"
echo "The contents of the current directory is 'ls'"

age=20
if [ $age -lt 18 ]
then
	echo "Minor"
elif [ $age -ge 18 ]
then
	echo "Major"
fi

potato=100
if [ $potato -lt 50 ]
then
	echo "Tooo smooll"
else
	echo "Potato layf"
fi


array=( one two three )
files=( “one” “two” “threeeee”)
limits=(one, two, three)
empty=( )

echo array #name of array -> array
echo $array #first element: 1
echo ${array} #first element: 1
echo ${array[*]} #all! one two three
echo ${array[@]} #all! one two three
echo ${array[1]} #index 1 which is two
echo ${!array[*]}  # all indexes: 0 1 2
echo ${#array[*]}  # # of elements: 3
echo ${#array[2]} # length of index 2 in array: 5

echo ">:("
for x in ${!limits[*]}
do
	# echo ">:("
	echo ${limits[x]}
done

echo "D:<"
for x in ${limits[*]}
do
	# echo ">:("
	echo $x
done

echo "o3o"
x=0
while [ $x -lt ${#array[*]} ]
do
	echo ${array[x]}
    x=`expr $x + 1`
done

echo ">:("
y=5
y=`expr $y / 2`
echo $y