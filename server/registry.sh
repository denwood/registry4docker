#!/bin/bash

# Script for generate a crt RSA 4096 bits
# /!\/!\/!\ need change number days before the experation /!\/!\/!\  
mkdir -p certs

openssl req \
  -newkey rsa:4096 -nodes -sha256 -keyout certs/dko.key \
  -x509 -days 365 -out certs/dko.crt

echo "Cert was be generated with success" 

exit 0 
