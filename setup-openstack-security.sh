#!/bin/bash

openstack security group create --description "ssh & icmp enabled" workshop-global-ssh
openstack security group rule create --protocol tcp --dst-port 22:22 --remote-ip 0.0.0.0/0 workshop-global-ssh
openstack security group rule create --protocol icmp workshop-global-ssh
