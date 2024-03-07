#!/bin/bash

ansible_host=(
    "192.168.0.137"
    "192.168.0.40"
    "192.168.0.59"
    "192.168.0.154"
    "192.168.0.60")

keys="/home/ansible/.ssh/id_rsa.pub"
user="iskra"


#echo ${ansible_host[@]}
#echo ${keys}

for host in "${ansible_host[@]}"
do
#echo $host
ssh-copy-id -i ${keys} ${user}@${host}
done
