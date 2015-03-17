#!/bin/bash

while true ; do
	read -p "what's the firts number " n1
	read -p "what's the second number " n2
	PS3="what's the operation"

	select ans in add subtract multiply divide ; do
		case $ans in
			add) op='+' ; break ;;
			subtract) op='-' ; break ;;
			multiply) op='*' ; break ;; 
			divide) op='/' ; break ;;
			*) echo	"invalid operation" ;;
		esac
	done
    ans=$(echo "$n1 $op $n2" | bc -l)
	printf  "%s %s %s = %s\n\n" "$n1" "$op" "$n2" "$ans"
done