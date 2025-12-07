$ResourceGroupName = "rg-az104-dev-belgium"
$Location = "belgiumcentral"
$AppServicePlan = "asp-web-dev-plan-1480"
$WebAppName = "app-web-dev1480"


az appservice plan create `
    --resource-group $ResourceGroupName `
    --location $Location `
    --name $AppServicePlan `
    --sku F1 `
    --is-linux

az webapp create `
    --resource-group $ResourceGroupName `
    --name $WebAppName `
    --plan $AppServicePlan `
    --runtime "PHP:8.3"
