#!/bin/bash

my_list="(california nevada colorado wyoming utah)"

for hawaii in ${my_list}
do
	if [ ${my_list} == 'hawaii' ]
	then
		echo "hawaii is the best"
	else
		echo "i am not fond of hawaii"
	fi
done



