#!/bin/bash
#display user passwor information
read -p "enter the username=" username
cat /etc/passwd | grep -w "$username"
uinfo=$?
echo "exit status= $uinfo"
echo "username you have enter= $username"
if [ $uinfo -eq 0 ]
then
  lpdate="$(cat /etc/shadow |grep -E "$username"| cut -d':' -f3)"
 # flpdate="$(date -I -d '1970-01-01 + $lpdate days')"

  min="$(cat /etc/shadow |grep -E "$username"| cut -d':' -f4)"
  
  max="$(cat /etc/shadow |grep -E "$username"| cut -d':' -f5)"
  

  disa="$(cat /etc/shadow |grep -E "$username"| cut -d':' -f6)"

  afdisable="$(cat /etc/shadow |grep -E "$username"| cut -d':' -f7)"
  accexp="$(cat /etc/shadow |grep -E "$username"| cut -d':' -f8)"
  #faccexp=$(date -I -d '1970-01-01 + $accexp days')



	echo "date of last password change from 1970-01-01 = "$lpdate
        echo "minimum required days between passwrd cchange = "$min
	echo "maximum allowed days for password change = "$max
	echo "number of days in advance to dispaly password expiration msg = "$disa
	echo "number of days after password expiration to disable account ="$afdisable
	echo "account expiration day from 1970-01-01 = "$accexp
	
else
    echo "user does not exist"
fi
