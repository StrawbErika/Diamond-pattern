# !/bin/bash
read h
space=`expr $h / 2`
halfPlus1=`expr $h / 2 + 1`
space2=`expr $space * 2`
stars=`expr $h - $space2`
a=0
b=0
while [ $a -lt $h ]
do
	if [ $a -eq $halfPlus1 ]
		space=`expr $space + 1`
		space2=`expr $space * 2`
		stars=`expr $h - $space2`

		echo "\n"
		while [ $b -lt $space ]
		do
			echo " "
			b=`expr $b + 1`
		done
		b=0
		while [ $b -lt $stars ]
		do
			echo "*"
			b=`expr $b + 1`
		done
		b=0
		while [ $b -lt $space ]
		do
			echo " "
			b=`expr $b + 1`
		done
		b=0
		a=`expr $a + 1`

	then
	else
		while [ $b -lt $space ]
		do
			echo " "
			b=`expr $b + 1`
		done
		b=0
		while [ $b -lt $stars ]
		do
			echo "*"
			b=`expr $b + 1`
		done
		b=0
		while [ $b -lt $space ]
		do
			echo " "
			b=`expr $b + 1`
		done
		b=0
		if [ $space -neq 0]
		then
			space=`expr $space - 1`
			space2=`expr $space * 2`
			stars=`expr $h - $space2`
			echo "\n"
		else
			space=0
		fi
		a=`expr $a + 1`
	fi
done
