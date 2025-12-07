$ResourceGroupName = "rg-az104-dev-belgium"
$Location = "belgiumcentral"
$StorageAccountName = "stappdeveu1480"
$Kind = "StorageV2"
$Sku = "Standard_LRS"

az storage account create `
    --name $StorageAccountName `
    --resource-group $ResourceGroupName `
    --location $Location `
    --sku $Sku `
    --kind $Kind

