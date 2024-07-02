#!/bin/sh

user="dotsenko_ap"
admgroup="wheel"
passfile="./pass"

set -x

pw useradd -n ${user} -c "server admin" -s sh -m -w random | tee -a ${passfile} 
pw groupmod ${admgroup} -m ${user}



