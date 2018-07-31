#!/bin/bash

openstack server create workshop-api-U-1 --image agavewrkshp20180806\ v.1.0 --flavor=m1.tiny --key-name=workshop-api-key --security-group=workshop-global-ssh --nic net-id=workshop-api-net
