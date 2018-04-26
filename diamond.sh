# !/bin/bash
read h

((space=h/2))
((half=h/2))
((spaceTwice=space * 2))
((stars=h - spaceTwice))

a=0
b=0

# potato=100
# if [ $potato -lt 50 ]
# then
# 	echo "Tooo smooll"
# else
# 	echo "Potato layf"
# fi


# age=20
# if [ $age -lt 18 ]
# then
# 	echo "Minor"
# elif [ $age -ge 18 ]
# then
# 	echo "Major"
# fi

# x=0
# while [ $x -lt ${#array[*]} ]
# do
# 	echo ${array[x]}
#     x=`expr $x + 1`
# done

while [ $a -lt $h ]
do
	echo $a
	if [ $a -gt $half ]
	then
		((space=space+1))
		((spaceTwice=space*2))
		((stars=h-spaceTwice))

		while [ $b -lt $space ]
		do
			echo " "
			((b=b+1))
		done

		b=0
		while [ $b -lt $stars ]
		do
			echo "*"
			((b=b+1))
		done
		
		b=0
		while [ $b -lt $space ]
		do
			echo " "
			((b=b+1))
		done
		
		b=0
		((a=a+1))
		echo
	else
		while [ $b -lt $space ]
		do
			echo " "
			((b=b+1))
		done

		b=0
		while [ $b -lt $stars ]
		do
			echo "*"
			((b=b+1))
		done
		
		b=0
		while [ $b -lt $space ]
		do
			echo " "
			((b=b+1))
		done
		
		zero=0
		b=0
		if [ $space -gt $zero ]
		then
			((space=space+1))
			((spaceTwice=space*2))
			((stars=h-spaceTwice))
			echo
		else
			space=0
			echo
		fi
		((a=a+1))
	fi
done
