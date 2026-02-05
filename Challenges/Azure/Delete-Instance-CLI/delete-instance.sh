RG=$(az group list --query '[0].name' -o tsv)

az vm delete --name name-of-the-vm --resourge-group $RG
