
az network nsg rule create \
  --resource-group kml_rg_main-3cd5ea27836643a1 \
  --nsg-name datacenter-nsg \
  --name AllowSSH \
  --protocol Tcp \
  --direction Inbound \
  --destination-port-range 22 \
  --access Allow
az vm create --name datacenter-vm --resource-group kml_rg_main-3cd5ea27836643a1 --image Ubuntu2204 --size Standard_B1s --nsg datacenter-nsg --generate-ssh-keys

az vm disk attach --name datacenter-disk --new --resource-group kml_rg_main-e9f988ef40eb4b7b --size-gb 30 --sku Standard_HDD --vm-name datacenter-vm