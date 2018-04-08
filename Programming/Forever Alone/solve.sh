#!/bin/bash
#file1=filelast
#file2=fileend
#while x==1
#	do
#	echo please enter something
#		read a
#		echo $a >filelast
#		while read -n 1 char
#		do
#			echo $char >fileend
#			cat fileend | sort | uniq -c
#		done < $file1
#done

#read -n 1 char; do echo "$char"; done < $lines | sort | uniq -c
x=1
while x=1
do
echo test
while read -n 1 char; do echo "$char"; done < file2 | sort | uniq -c | sort | egrep "^[[:space:]][[:space:]][[:space:]][[:space:]][[:space:]][[:space:]][1][[:space:]]"; cat file2; cp /dev/null file2
sleep 1
done
