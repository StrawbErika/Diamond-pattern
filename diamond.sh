# !/bin/bash
read h

((space=h/2))
((half=h/2))
((spaceTwice=space * 2))
((stars=h - spaceTwice))

a=0
b=0

while [ $a -lt $h ]
do
	echo -n $a
	if [ $a -gt $half ]
	then
		((space=space+1))
		((spaceTwice=space*2))
		((stars=h-spaceTwice))	

		echo -n "Greater Stars:"
		echo -n $stars
		echo -n "Greater Space:"
		echo -n $space

		while [ $b -lt $space ]
		do
			echo -n " "
			((b=b+1))
		done

		b=0
		while [ $b -lt $stars ]
		do
			echo -n "*"
			((b=b+1))
		done
		
		b=0
		while [ $b -lt $space ]
		do
			echo -n " "
			((b=b+1))
		done
		
		b=0
		((a=a+1))
		echo
	else
		echo -n "Stars:"
		echo -n $stars
		echo -n "Space:"
		echo -n $space

		while [ $b -lt $space ]
		do
			echo -n " "
			((b=b+1))
		done

		b=0
		while [ $b -lt $stars ]
		do
			echo -n "*"
			((b=b+1))
		done
		
		b=0
		while [ $b -lt $space ]
		do
			echo -n " "
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
