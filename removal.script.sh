#!/bin/bash
#Description : This script will remove all your images and existed containers on server
#Author: Alex
#Date: 3/07/2022
echo " Let check your credential.... checking...."
if [ $UID -ne 0 ]
then 
		
		echo " This action will remove all your images and containers!!!!"
		else
				exit 1
fi
docker images -a
docker rmi $(docker images -a -q)

docker ps -a -f status=exited
docker rm $(docker ps -a -f status=exited -q)

echo " Removals complete!!!!"
