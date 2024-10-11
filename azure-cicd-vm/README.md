# Infrastructure as Code (IaC)
Algumas das tecnologias usadas são:

- [Terraform](https://www.terraform.io/)
- [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/)

## Estrutura de Diretórios

- `config`: parâmetros de cada ambiente (`dev`, `qa` e `prod`).
- `terraform`: templates Terraform com a definição de infraestrutura.
- `docs`: documentações adicionais.

## TO DO
opções de usar o terraform state:
    1 - Criar variables groups com arquivo backend-config.txt(configurar storage account, container e terraform state).
        TerraformBackendResourceGroup = santiago-management
        TerraformBackendStorageAccount = santiago24451
        TerraformBackendStorageContainer = terraform-state
    2 - usar em valores em backend.tf no codigo main do terraform.

## Azure DevOps
Service Principal = kumulus-demo-SANTIAGO-20e4de8e-4aee-4ff0-bb3f-a0e46e374670
connection =  connection-santiago-management



# step by step how use this demo
simple way to configure azure terraform CI CD

### create resources of the management
follow steps in remote-state

### create service principal and connections
az login
az account list --output table
az account set --subscription <Azure-SubscriptionId>
az ad sp create-for-rbac --role="Contributor" 
--scopes="/subscriptions/SUBSCRIPTION_ID" --name="santiagoazdevops"

appId (Azure) → client_id (Terraform).
password (Azure) → client_secret (Terraform).
tenant (Azure) → tenant_id (Terraform).

### create terraform code
this code was develop using mudule to separete and organize the code

### create ci to build artifacts with validade terraform and security with tfsec


### create cd to deploy code and resources to generate releases


#### Implement infracost, change security method, implement slots bluegreen.