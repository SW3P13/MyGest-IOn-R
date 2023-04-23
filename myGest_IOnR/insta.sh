#!/bin/bash



echo "Etes vous une machine client ou serveur ? (Entrer C pour client et S pour serveur)"
read machine


if [[ $machine == "C" ]];
then
    echo "SERVEUR=0" >> ../config.sh
    apt update
    apt install lolcat
fi


if [[ $machine == "S" ]]; 
then
  echo "SERVEUR=1" >> ../config.sh
  apt update
  apt install figlet
  apt install net-tools
fi

