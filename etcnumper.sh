#List all numeric permissions for each file under etc

#!/bin/bash

nump=$(stat -c "%a" /etc/*)
echo "numeric permission for file are:"; $nump
