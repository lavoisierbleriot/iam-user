#!/bin/bash
# user name
read -p "Enter your name :" NAME 
sleep 3
# group name
read -p "Enter the group name:" GROUP 
sleep 3
read -p "user password:" PASSWORD 
sleep 3
echo "create group"
echo 
echo
aws iam create-group --group-name $GROUP
sleep 3
echo 
echo "Create user name"
aws iam create-user --user-name $NAME 
sleep 3
echo
echo "Create password"
aws iam create-password --user-password $PASSWORD 
sleep 3
echo
echo "adding user to group"
aws iam add-user-to-group --user-name $NAME --group-name $GROUP 
sleep3 
echo 
 