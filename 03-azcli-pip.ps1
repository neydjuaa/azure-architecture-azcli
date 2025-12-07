$ResourceGroupName = "rg-az104-dev-belgium"
$Location = "belgiumcentral"
$PublicIpName = "pip-web-dev-belgium-01"

az network public-ip create `
    --resource-group $ResourceGroupName `
    --location $Location `
    --name $PublicIpName `
    --sku Standard `
    --allocation-method Static `
    --version IPv4