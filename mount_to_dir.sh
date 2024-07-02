#!/bin/sh

USER="Yamschikov_GA"
NETSHARE="//pc-01-ots-04.ic.local/linux"
MNTDIR="/mnt/diskOTS"

mount -t cifs -o username=${USER} ${NETSHARE} ${MNTDIR}