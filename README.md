# jetstream-workshop-provisioning
Script to use Jetstream's openstack API to provision images for workshops

To get start you need to download the openstack RC file (see instructions here https://iujetstream.atlassian.net/wiki/spaces/JWT/pages/39682064/Setting+up+openrc.sh)

Then on your system you need to install the openstack CLI 
```
pip install python-openstackclient
```
This will install the genral openstack client.

With that installed you can now source your openstack RC file which will ask for you login password to Jetstream(XSEDE,TACC)

Now you can utilize the scripts to setup VM instances on jetstream with the image specified in setup-openstack-image.sh. 

The order of operations should be:

1. setup your keys
2. setup security groups
3. setup the network
4. setup images.

Steps 1-3 you just launch with bash:

```
bash setup-openstack-keys.sh
bash setup-openstack-security.sh
bash setup-openstack-netowrk.sh
```

For step 4 you use the generate-images.sh:
```
bash generate-images.sh number-of-vms
```
So to launch 5 VMs you would do:
```
bash generate-images.sh 5
```
This will deploy 5 instances on Jetstream and assign them each a floating ip address so they can be accessed via SSH.
