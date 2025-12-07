$ResourceGroupName = "rg-az104-dev-belgium"
$Location = "belgiumcentral"

$AvSetName = "as-dev-belgium-01"
$DataDiskName = "md-web-data-dev-belgium-01"

$VmName = "vm-dev-belgium-web-01"
$VmSize = "Standard_B1s"
$NicName = "nic-web-dev-belgium-01"
$StorageAccountName = "stappdeveu1480"

az vm availability-set create `
    --resource-group $ResourceGroupName `
    --name $AvSetName `
    --location $Location `
    --platform-fault-domain-count 2

az disk create `
    --resource-group $ResourceGroupName `
    --location $Location `
    --name $DataDiskName `
    --size-gb 16 `
    --sku StandardSSD_LRS


az vm create `
    --resource-group $ResourceGroupName `
    --location $Location `
    --name $VmName `
    --nics $NicName `
    --size $VmSize `
    --availability-set $AvSetName `
    --admin-username linuxadmin `
    --authentication-type ssh `
    --generate-ssh-keys `
    --image "Canonical:ubuntu-24_04-lts:server:latest"

az vm disk attach `
    --resource-group $ResourceGroupName `
    --vm-name $VmName `
    --name $DataDiskName `
    --lun 0 `
    --caching ReadWrite

az vm boot-diagnostics enable `
    --resource-group $ResourceGroupName `
    --name $VmName `
    --storage "https://$StorageAccountName.blob.core.windows.net/"

