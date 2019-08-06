#!/bin/bash
read -p "enter adapter name" adapter
ifconfig $adapter
if [ $? -eq 0 ]
 then 
    ifconfig $adapter |grep -Po "\d+\.\d+\.\d+\.\d+"
else
	echo "no adapter"
fi
