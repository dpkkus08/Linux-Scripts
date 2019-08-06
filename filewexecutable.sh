#!/bin/bash
read -p "please enter file path" path
echo "you have enter = $path"
cd $path
chk=$?

if [ $chk -eq 0 ]
then
    fchk="$(ls -ld $path |cut -d' ' -f1 |tail -c 3|head -c 1)"
	if [ $fchk = "x" ]
	then 
              echo "file is executable"
        else	
		echo "file is not executable"
	fi
else
	echo "file not found"
fi
 
