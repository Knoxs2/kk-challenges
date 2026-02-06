#!/bin/bash
RG=$(az group list --query '[0].name' -o tsv)
ACCOUNT_KEY=$(az storage account keys list -g $RG --account-name datacenterst27275  --query '[0].value' -o tsv)

az storage blob upload --account-name datacenterst27275 --account-key $ACCOUNT_KEY --container-name datacenter-blob-7130 --file /tmp/datacenter.txt --name datacenter.txt


# Documentation reference: https://learn.microsoft.com/en-us/cli/azure/storage/blob?view=azure-cli-latest#az-storage-blob-upload