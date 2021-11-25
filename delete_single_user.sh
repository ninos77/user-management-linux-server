1 #!/bin/bash
 2
 3 clear
 4 echo "===All Users===="
 5 ls /home/
 6 echo "================"
 7 echo
 8 read -r -p 'Pleas enter the user you want to delete from the list above: ' user
 9
10 sudo deluser --remove-home $user

