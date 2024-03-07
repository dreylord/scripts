#!/bin/bash

# Install glibc 2.29
LIBDIR="/home/ansible/scripts/glibc-2.29"
if [[ -d ${LIBDIR} ]]
then
    cd glibc-2.29
else
    curl -O https://mirror.truenetwork.ru/gnu/glibc/glibc-2.29.tar.gz
    tar -xzvf glibc-2.29.tar.gz
    cd glibc-2.29
fi
