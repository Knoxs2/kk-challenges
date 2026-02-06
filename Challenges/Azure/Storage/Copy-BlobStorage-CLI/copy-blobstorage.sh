#!/bin/bash
RG=$(az group list --query '[0].name' -o tsv)

ACCOUNT_KEY=$(az storage account keys list -g $RG --account-name datacenterst27275 --query '[0].value' -o tsv)





