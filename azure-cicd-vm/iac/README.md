# Infrastructure as Code (IaC)
#0.3
Este repositório possui as definições de IaC para o CDR. Algumas das tecnologias usadas são:

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

TODO

## Azure DevOps
Service Principal = kumulus-demo-SANTIAGO-20e4de8e-4aee-4ff0-bb3f-a0e46e374670
connection =  connection-santiago-management

