#enter path and you will get numeric file permission in it
#!/bin/bash

read -p "enter the path for which you want file permissions:" path
echo "path you have enter:" $path
#cpath=$($path/*)
nump=$(stat -c '%a' $path/*)

echo "$nump"


