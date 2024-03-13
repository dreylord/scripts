#!/bin/bash

set -x

DIR="$HOME/src/"

if test -d ${DIR}
then
    echo ""
    rm -f ${DIR}/*.deb
else
    mkdir ${DIR}
fi

cd ${DIR}

# Downloads glibc
sudo wget http://ftp.ru.debian.org/debian/pool/main/g/glibc/libc6_2.28-10+deb10u1_amd64.deb
sudo wget http://ftp.ru.debian.org/debian/pool/main/g/glibc/locales_2.28-10+deb10u1_all.deb
sudo wget http://ftp.ru.debian.org/debian/pool/main/g/glibc/libc-l10n_2.28-10+deb10u1_all.deb
sudo wget http://ftp.ru.debian.org/debian/pool/main/g/glibc/libc-bin_2.28-10+deb10u1_amd64.deb
sudo wget http://ftp.ru.debian.org/debian/pool/main/g/glibc/libc-dev-bin_2.28-10+deb10u1_amd64.deb
sudo wget http://ftp.ru.debian.org/debian/pool/main/g/glibc/libc6-dev_2.28-10+deb10u1_amd64.deb
sudo wget http://ftp.ru.debian.org/debian/pool/main/g/glibc/libc6-dbg_2.28-10+deb10u1_amd64.deb
sudo wget http://ftp.ru.debian.org/debian/pool/main/g/glibc/libc6-i386_2.28-10+deb10u1_amd64.deb
sudo wget http://ftp.ru.debian.org/debian/pool/main/g/glibc/libc6-x32_2.28-10+deb10u1_amd64.deb

# Downloads libseccomp2
sudo wget http://ftp.de.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1+deb11u1_amd64.deb

# Install dpkg
sudo dpkg -i *.deb

