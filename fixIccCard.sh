#!/bin/bash

for file in `grep -lr 'IccCard$State' $1`
do
	if [ `basename $file` = 'IccCard$State.smali' ];then
		continue
	fi
	sed -i 's#IccCard$State#IccCardConstants$State#g' $file
done
