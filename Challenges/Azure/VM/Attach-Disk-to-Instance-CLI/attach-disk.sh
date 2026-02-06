RG=$(az group list --query '[0].name' -o tsv)

Name=$(az vm list --query=[].name -o tsv)

diskID=$(az disk list --query=[0].id -o tsv)

az vm disk attach --vm-name $Name --resource-group $RG --disks $diskID

# This obviously works only on Azure tenant created for the challenge, magic numbers to get resources
# Documentation reference: https://learn.microsoft.com/en-us/cli/azure/disk?view=azure-cli-latest#az-disk-list
# also: https://learn.microsoft.com/en-us/cli/azure/vm/disk?view=azure-cli-latest#az-vm-disk-attach
