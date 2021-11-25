 1 #!/bin/bash
 2
 3 #arr_users=()
 4 read -p "Please Enter Path of your list names folder, ex. /path/to/list names/ : " -r path
 5 read -p "Please Enter your file name: " -r file_name
 6 names_list="${path}${file_name}"
 7 #names_list=~/bash_scr/names.csv
 8 while IFS=, read -r first_name last_name; do
 9   f=${first_name:0:2}
10   l=${last_name:0:2}
11 #arr_users+=("${f,}${l,}")
12   echo  ${f,}${l,} >> handle.txt
13 done <  <(tail -n +2 $names_list)
14
15 usersfile=/var/www/user-management-linux-server/handle.txt
16 usernames=$(cat $usersfile | tr 'A-Z' 'a-z' | head -5)
17 count=0
18 for user in $usernames
19 do
20 if grep -q  $user /etc/passwd  ||  grep -q  $user /etc/group;then
21        echo ERROR -- User $user OR group $user already exist
22
23 else
24         password=${user}123
25         #echo "User:${user} - passwd: ${password} " >> usr_passwd.txt
26         sudo adduser $user --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
27         echo "User $user added successfully!"
28         echo "$user:$password" | sudo chpasswd
29         echo "Password for user $user changed successfully"
30         ((count=count+1))
31 fi
32 done
33 echo " "
34 rm handle.txt
35 #number_users=$(ls /home/ | cat | wc -l)
36 echo "=====Have created ${count} users===="
37 echo " "
