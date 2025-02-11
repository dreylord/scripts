#!/usr/bin/bash

set -x

user="rgm-as-cmw"
pass="ZdFg2509"

hosts=("kraz-s-cmw03.hq.root.ad"
  "kraz-s-cmw04.hq.root.ad"
  "kraz-s-cmw05.hq.root.ad"
  "kraz-s-cmw06.hq.root.ad"
  "kraz-s-cmw07.hq.root.ad"
  "kraz-s-cmw08.hq.root.ad"
)

distr="/home/rgm-as-cmw/4.7-release-ru-4.7.2889.0.astra.tar.gz"

for item in ${hosts[@]}
do
 scp ${distr} ${user}@${item}:/home/rgm-as-cmw
done

#EOF
