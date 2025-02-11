#!/usr/bin/env bash

# User modify groups
users="
olekhnovichsa
lyapinanv
shelepovav1
konshinaa
aleshinae
kolychevka
"

for usr in ${users};do
        echo "Name:" ${usr}
        usermod -a -G docker ${usr}
        id ${usr}
        echo ;
done

exit 0;
