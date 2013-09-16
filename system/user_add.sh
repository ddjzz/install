#!/bin/bash 

user_name=$1

#useradd -m  -s /bin/bash $1 && edquota -p server01 -u $1 && passwd $1
useradd -m  -s /bin/bash $1 && passwd $1

chmod g+s /home/$1


