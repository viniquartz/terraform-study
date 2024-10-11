# Commands

## Initialize the terraform configuration
terraform init

## Validate confuration
terraform validate

## Rewrite Terraform configuration files to a canonical format and style
terraform fmt -recursive

## Plan the terraform deployment
terraform plan --var-file=./config/prd/prd.tfvars -out create-replicate.tfplan

## Apply the deployment
terraform apply create-replicate.tfplan

## Destroy the deployment
terraform plan --destroy -out destroy-replicate.tfplan
terraform apply destroy-replicate.tfplan