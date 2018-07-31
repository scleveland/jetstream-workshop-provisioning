#!/bin/bash
count=1
for (( c=1; c<=$1; c++ ))
do
   bash setup-openstack-image.sh ${c}
done
