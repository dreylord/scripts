#!/bin/bash

set -x

# Install depends
echo "deb [trusted=yes] https://mirror.yandex.ru/debian/ buster main contrib non-free" | sudo tee /etc/apt/sources.list.d/snapcraft.list
echo "deb http://deb.debian.org/debian bookworm main" | sudo tee /etc/apt/sources.list.d/debian12-bookworm.list
echo "deb-src http://deb.debian.org/debian bookworm main" | sudo tee -a /etc/apt/sources.list.d/debian12-bookworm.list

gpg --keyserver keyserver.ubuntu.com --recv-key 648ACFD622F3D138
gpg -a --export 648ACFD622F3D138 | sudo apt-key add -

gpg --keyserver keyserver.ubuntu.com --recv-key 0E98404D386FA1D9
gpg -a --export 0E98404D386FA1D9 | sudo apt-key add -

gpg --keyserver keyserver.ubuntu.com --recv-key DCC9EFBF77E11517
gpg -a --export DCC9EFBF77E11517 | sudo apt-key add -

sudo apt update -y

# Ininstall libc6 2.24
sudo apt install apparmor -y
sudo apt install snapd -y
