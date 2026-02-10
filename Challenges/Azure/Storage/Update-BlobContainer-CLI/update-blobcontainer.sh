#!/bin/bash
RG=$(az group list --query '[0].name' -o tsv)
ACCOUNT_KEY=$(az storage account keys list -g $RG --account-name devopsst11341 --query '[0].value' -o tsv)

az storage container set-permission --name xfusion-container-8321 --public-access off --account-name xfusionst2352 --account-key $ACCOUNT_KEY
az storage container set-permission --name datacenter-blob-1740 --public-access on --account-name dataceterst27018

# documentation reference: https://learn.microsoft.com/en-us/cli/azure/storage/container?view=azure-cli-latest#az-storage-container-set-permission