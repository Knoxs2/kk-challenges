#!/bin/bash
RG=$(az group list --query '[0].name' -o tsv)
ACCOUNT_KEY=$(az storage account keys list -g $RG --account-name nautilusst8041 --query '[0].value' -o tsv)
    az storage container --storage-account devopsst25582 --container-name devops-container-16121 --storage-key $ACCOUNT_KEY
URI=$(az storage account show --name devopsst25582 --resource-group $RG --query "primaryEndpoints.blob" --output tsv)

BLOB_URI="https://nautilusst8041.blob.core.windows.net/nautilus-container-23794/nautilus-db-backup.bacpac"
# Command to create the backup

az sql server firewall-rule create   --resource-group $RG   --server nautilus-server-27434   --name AllowAzureServices   --start-ip-address 0.0.0.0   --end-ip-address 0.0.0.0
az sql db export --admin-user devops-admin --admin-password Damin@123 --server nautilus-server-27434 --name devops-db --storage-key $ACCOUNT_KEY --storage-key-type StorageAccessKey --storage-uri $BLOB_URI -g $RG


az storage blod download --account-name nautilusst8041 --container-name nautilus-container-23794 --name nautilus-db-backup.bacpac --file /opt/nautilus-db-backup.bacpac

