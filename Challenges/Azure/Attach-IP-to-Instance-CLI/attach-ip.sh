#!/bin/bash

RG=$(az group list --query '[0].name' -o tsv)
name=$(az network nic list --query "[0].name" -o tsv)
ipconfig=$(az network nic ip-config list --nic-name $name -g $RG --query "[0].name" -o tsv)


az network nic ip-config update -g $RG --nic-name $name --public-ip-address nautilus-pip --name $ipconfig
