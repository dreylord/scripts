#!/usr/bin/bash

user=dreyman
distribution="(. /etc/os-release;echo $ID$VERSION_ID)"

curl -kL --proxy-ntlm -U ${user} -x http://baz-s-wpx01.hq.root.ad https://nvidia.github.io/nvidia-docker/gpgkey -o /usr/share/keyrings/nvidia-docker.gpg
curl -kL -x http://baz-s-wpx01.hq.root.ad https://nvidia.github.io/nvidia-docker/${distribution}/nvidia-docker.list | \
tee /etc/apt/sources.list.d/nvidia-docker.list

apt-get update

#EOF
