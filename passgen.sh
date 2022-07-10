#!/bin/bash
clear
echo -e "\033[34m---------------------------\033[0m"
echo -e "\033[34m Choose a Hash! \033[0m"
echo -e "\033[32m[+] md5sum \033[0m"
echo -e "\033[32m[+] sha256 \033[0m"
echo -e "\033[32m[+] sha512 \033[0m"
echo -e "\033[34m---------------------------\033[0m"

read hash

if [ $hash = md5sum ];
then
  echo -e "\033[34m Generating random password...\033[0m"
  sleep 1
  openssl passwd md5sum

elif [ $hash = sha256 ];
then
  echo -e "\033[34m Generating random password...\033[0m"
  sleep 1
  openssl passwd sha256

elif [ $hash = sha512 ];
then
  echo -e "\033[34m Generating random password...\033[0m"
  sleep 1
  openssl passwd sha512
else
  exit 1
fi

