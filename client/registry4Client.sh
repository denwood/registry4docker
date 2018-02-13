#!/bin/bash

# /!\/!\/!\  

# For use a personnal Docker Registry you need a singed certficat by a CA 
# OR 
# if you use a certificate signed by you or unknown authority your need 
# 	- Move your personnal .crt into /etc/docker/sudo mkdir -p /etc/docker/certs.d/myregistrydomain.com:5000/  

# /!\/!\/!\  

echo Docker register Server IP : 
read srv_ip
echo Docker register Server Port : 
read srv_port 
echo Certificate file_name without the extention : 
read cert_name
echo $srv_ip
echo $cert_name


sudo sh -c "echo '$srv_ip	$cert_name' >> /etc/hosts"
sudo mkdir -p /etc/docker/certs.d/$cert_name:$srv_port/
sudo cp ./certs/$cert_name.crt /etc/docker/certs.d/$cert_name:$srv_port/


exit 0 
