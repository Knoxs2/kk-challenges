#!/bin/bash

RG=$(az group list --query '[0].name' -o tsv)

az network nsg create --name nautilus-nsg -g $RG

az network nsg rule create --name Allow-HTTP --nsg-name nautilus-nsg --access Allow --direction Inbound --protocol TCP --destination-port-ranges 80   --source-address-prefixes '*' --source-port-ranges '*' --destination-address-prefixes '*' -g $RG --priority 1000
az network nsg rule create --name Allow-SSH  --nsg-name nautilus-nsg --access Allow --direction Inbound --protocol TCP --destination-port-ranges 22 --source-address-prefixes '*' --source-port-ranges '*' --destination-address-prefixes '*' --priority 1010 -g $RG