RG=$(az group list --query '[0].name' -o tsv)
# Assuming RG is already created
az network vnet create --name xfusion-vnet --resource-group $RG 

# when needed to attach Subnet
az network vnet create --name nautilus-vnet --address-prefix 10.0.0.0/16 --resource-group $RG --ip-alam
az network vnet subnet create --name nautilus-subnet --vnet-name nautilus-vnet --resource-group $RG




# Documentation reference: https://learn.microsoft.com/en-us/cli/azure/network/vnet/subnet?view=azure-cli-latest#az-network-vnet-subnet-create
# Also: https://learn.microsoft.com/en-us/cli/azure/network/vnet?view=azure-cli-latest#az-network-vnet-create