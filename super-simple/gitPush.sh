#!/bin/bash
userName=$(git config user.name 2>&1) 
userEmail=$(git config user.email 2>&1)

if [ "$userName" == "$1" ] 
then
    echo "Equal"
else 
    git config --global user.name $1 --add
    git config --global user.email $2 --add
    git config user.name $1 --add
    git config user.email $2 --add
    echo "Not Equal"
fi



# Steps on How to Push
#./gitPush.sh abdallahozaifa abdallahozaifa19527@gmail.com 