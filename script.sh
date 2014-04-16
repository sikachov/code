#! /bin/bash

flag=0
i=2
while [ $i -lt $1 ];do
	j=2
	flag=0
	while [ $j -lt $i ];do
		r=`expr $i % $j`
		if [ $r -eq 0 ]
		then
			flag=1
		fi
	let j=$j+1
	done
	if [ $flag -eq 0 ]
	then
		echo $i
		flag=0
	fi
	let i=$i+1
done
