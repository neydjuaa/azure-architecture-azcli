$ResourceGroupName = "rg-az104-dev-belgium"
$Location = "belgiumcentral"
$VnetName = "vnet-dev-belgium-01"
$SubnetName = "snet-dev-belgium-web-01"
$PublicIpName = "pip-web-dev-belgium-01"
$NicName = "nic-web-dev-belgium-01"

az network nic create `
    --resource-group $ResourceGroupName `
    --location $Location `
    --name $NicName `
    --vnet-name $VnetName `
    --subnet $SubnetName `
    --public-ip-address $PublicIpName