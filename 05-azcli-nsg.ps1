$ResourceGroupName = "rg-az104-dev-belgium"
$Location = "belgiumcentral"
$NsgName = "nsg-az104-shared-belgium-01"

$VNetName = "vnet-dev-belgium-01"
$SubnetName = "snet-dev-belgium-web-01"

az network nsg create `
    --resource-group $ResourceGroupName `
    --name $NsgName `
    --location $Location

az network nsg rule create `
    --resource-group $ResourceGroupName `
    --nsg-name $NsgName `
    --name "in-allow-http-from-internet-to-10-0-0-0-4" `
    --priority 410 `
    --access Allow `
    --direction Inbound `
    --protocol Tcp `
    --source-address-prefixes Internet `
    --source-port-ranges "*" `
    --destination-address-prefixes "10.0.0.4" `
    --destination-port-ranges 80


az network vnet subnet update `
    --resource-group $ResourceGroupName `
    --vnet-name $VNetName `
    --name $SubnetName `
    --network-security-group $NsgName