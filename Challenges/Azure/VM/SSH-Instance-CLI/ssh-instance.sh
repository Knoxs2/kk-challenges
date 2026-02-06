RG=$(az group list --query '[0].name' -o tsv)
KEY="~/.ssh/id_rsa"

az ssh vm --resource-group $RG --name xfusion-vm --local-user azureuser --private-key-file ~/.ssh/id_rsa

Publicip=$(az vm show -d -g $RG -n xfusion-vm --query publicIps -o tsv)


ssh -i ~/.ssh/id_rsa root@Publicip

#Challenge was to access the VM with root user without password, as soon as you run the ssh command you can get it in as azureuser, you "sudo -i" than you change the first lines of authorized_keys
