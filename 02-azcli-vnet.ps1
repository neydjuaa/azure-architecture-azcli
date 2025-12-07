$ResourceGroupName = "rg-az104-dev-belgium"
$Location = "belgiumcentral"
$VnetName = "vnet-dev-belgium-01"
$AddressSpace = "10.0.0.0/16"
$SubnetName = "snet-dev-belgium-web-01"
$SubnetAddressPrefix = "10.0.0.0/24"

az network vnet create `
    --resource-group $ResourceGroupName `
    --location $Location `
    --name $VnetName `
    --address-prefixes $AddressSpace `
    --subnet-name $SubnetName `
    --subnet-prefixes $SubnetAddressPrefix
