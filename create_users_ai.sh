#!/usr/bin/env bash

users="kazakovvd kruglikovkv khomyakovvv marzhanovskiyin eliseevds gradenkoms pisarevav stepanovms"
shell=/usr/bin/bash
maingr=ai
othergr=docker

for user in $users
do
    echo $user
    useradd -N --gid $maingr -G $othergr -s $shell -m $user
    echo "----------------------------------"
done
