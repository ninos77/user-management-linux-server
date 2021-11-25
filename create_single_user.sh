1 #!/bin/bash
 2
 3 clear
 4
 5 read -r -p 'Pleas enter user name: ' user
 6
 7 if  grep -q  $user /etc/passwd  ||  grep -q  $user /etc/group ;then
 8        echo ERROR -- User $user OR group $user already exist
 9
10 else
11         password=${user}123
12         sudo adduser $user --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
13         echo "User $user added successfully!"
14         echo "$user:$password" | sudo chpasswd
15         echo "Password for user $user changed successfully"
16 fi
17 echo " "
