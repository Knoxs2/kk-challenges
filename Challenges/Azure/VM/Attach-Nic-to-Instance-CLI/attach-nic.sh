#!/bin/bash

RG=$(az group list --query '[0].name' -o tsv)
NIC=$(az network nic list --query "[?name=='datacenter-nic'].{id:id}" -o tsv)
VM=$(az vm list --query "[?name=='datacenter-vm'].{name:id}" -o tsv)


az vm deallocate --name datacenter-vm -g $RG
az vm nic add --nics $NIC -g $RG --vm-name datacenter-vm
az vm start --name datacenter-vm -g $RG


# Documentation reference: https://learn.microsoft.com/en-us/cli/azure/vm/nic?view=azure-cli-latest
# Also: https://learn.microsoft.com/en-us/cli/azure/vm?view=azure-cli-latest