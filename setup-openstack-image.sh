#!/bin/bash
num=$1
openstack server create workshop-api-U-${num} --image agavewrkshp20180806\ v.1.0 --flavor=m1.tiny --key-name=workshop-api-key --security-group=workshop-global-ssh --nic net-id=workshop-api-net
openstack floating ip create public >> out.txt
IP="$(cat out.txt | grep floating_ip_address | cut -d'|' -f3)"
openstack server add floating ip workshop-api-U-${num} ${IP}
rm out.txt
