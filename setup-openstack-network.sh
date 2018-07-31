#!/bin/bash

openstack network create workshop-api-net
openstack subnet create --network workshop-api-net --subnet-range 10.0.0.0/24 workshop-api-subnet1
openstack router create workshop-api-router
openstack router add subnet workshop-api-router workshop-api-subnet1
openstack router set --external-gateway public workshop-api-router

