#!/bin/bash
RG=$(az group list --query '[0].name' -o tsv)

az storage account create --name nautilusst25558 -g $RG

ACCOUNT_KEY=$(az storage account keys list -g $RG --account-name xfusionst32328 --query '[0].value' -o tsv)

az storage container create --name xfusion-blob-23595 --account-name xfusionst32328 --account-key $ACCOUNT_KEY --public-access off

az storage container create --name devops-blob-22692 --account-name devopsst11341 
--account-key $ACCOUNT_KEY --public-access off 

## if needed public container access: 
#az storage container create --name nautilus-blob-22882 --account-name nautilusst25558 --account-key $ACCOUNT_KEY --public-access container
