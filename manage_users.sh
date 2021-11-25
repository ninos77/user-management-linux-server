 1 #!/bin/bash
 2
 3 clear
 4
 5 echo 
 6 echo Pleas select one of the following options:
 7 echo
 8 echo 'a = Add one single user'
 9 echo 'b = Add many users from a list given path for that list'
10 echo 'c = Delete one single user'
11 echo 'd = Delete all users exceptions a specific user'
12 echo 'e = Delete all users'
13 echo 
14         read choice
15         case $choice in
a)      /var/www/user-management-linux-server/create_single_user.sh;;
b)      /var/www/user-management-linux-server/create_many_users_list.sh;;
c)      /var/www/user-management-linux-server/delete_single_user.sh;;
d)      /var/www/user-management-linux-server/delete_all_except_specfc_usr.sh;;
e)      /var/www/user-management-linux-server/delete_all_users.sh;;
*)      echo Invalid Choice - Good Bye
23
24         esac
