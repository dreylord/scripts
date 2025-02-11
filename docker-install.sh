#!/usr/bin/bash

# Oracle Linux
packages="containerd.io-1.7.22-3.1.el8.x86_64.rpm
docker-buildx-plugin-0.17.1-1.el8.x86_64.rpm
docker-ce-27.3.1-1.el8.x86_64.rpm
docker-ce-cli-27.3.1-1.el8.x86_64.rpm
docker-compose-plugin-2.29.7-1.el8.x86_64.rpm"

for pack in ${packages}
do
        rpm -i ${pack}
done

echo;

exit 0
