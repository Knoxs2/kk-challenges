RG=$(az group list --query '[0].name' -o tsv)

az vm update --resource-group $RG --name datacenter-vm --set tags.Environment=dev