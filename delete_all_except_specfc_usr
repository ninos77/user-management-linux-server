 1 #!/bin/bash
 2 clear
 3 echo "===All Users===="
 4 ls /home/
 5 echo "================"
 6 echo
 7 users=$(ls /home/ | cat )
 8 read -r -p 'Did You want to delet all users y/n? ' a
 9 if [ $a == "y" ];then
10
11     sudo deluser --remove-home $user
12
13 else
14     exit 0
15 fi
