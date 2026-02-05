RG=$(az group list --query '[0].name')
# Get Already created RG

az network public-ip create --name nautilus-pip --resource-group $RG

az vm create --name datacenter-vm --resource-group $RG --image Ubuntu2204 --size Standard_B1s --nsg datacenter-nsg --generate-ssh-keys --public-ip-address nautilus-pip