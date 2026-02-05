RG=$(az group list --query '[0].name' -o tsv)

az disk create --name datacenter-disk --sku Standard_LRS --size-gb 2 -g $RG