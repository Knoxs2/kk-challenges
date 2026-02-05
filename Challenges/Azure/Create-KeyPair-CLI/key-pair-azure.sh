az sshkey create --name datacenter-kp --encryption-type RSA --resource-group kml_rg_main-ca1533af4e7b4e2a


# resource group was already created but might be necessary to run
# az group create --name myResourceGroup --location eastus
# az sshkey list
# documentation reference: https://learn.microsoft.com/en-us/azure/virtual-machines/ssh-keys-azure-cli