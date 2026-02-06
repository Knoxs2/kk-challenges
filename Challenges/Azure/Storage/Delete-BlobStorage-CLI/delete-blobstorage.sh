RG=$(az group list --query '[0].name' -o tsv)

ACCOUNT_KEY=$(az storage account keys list -g $RG --account-name nautilusst9199 --query '[0].value' -o tsv)

az storage blob download-batch   --account-name nautilusst9199   --source nautilus-blob-17830   --destination /opt/

az storage container delete --name nautilus-blob-17830 --account-name nautilusst9199 --account-key $ACCOUNT_KEY

