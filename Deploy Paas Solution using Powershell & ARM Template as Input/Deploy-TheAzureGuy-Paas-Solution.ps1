### Defining Deployment Variables  ######
{
$location ='Central India'
$resourceGroupName = 'theazureguy-simple-paas-template'
$resourceDeploymentName = 'theazureguy-simple-paas-template-deployment'
$templatePath = $env:SystemDrive + '\' + 'ARM_Template_Design'
$templateFile = 'theazureguy-simple-paas.json'
$template = $templatePath + '\' +$templateFile
}

### Create Resource Group   ######
{
New-AzureRmResourceGroup -Name $resourceGroupName -Location $location -verbose -Force
}

#### Deploy Resource using created json file
{
New-AzureRmResourceGroupDeployment -Name $resourceDeploymentName -ResourceGroupName $resourceGroupName -TemplateFile $template -Verbose -Force
}