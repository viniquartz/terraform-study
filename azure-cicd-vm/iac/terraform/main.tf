module "rg" {
  source   = "./modules/rg"
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = module.rg.resource_group_name
  location            = var.location
}

# module "keyvault" {
#   source              = "./modules/keyvault"
#   resource_group_name = module.rg.resource_group_name
#   location            = var.location
# }

module "storage" {
  source              = "./modules/storage"
  resource_group_name = module.rg.resource_group_name
  location            = var.location
  subnet_id           = module.network.subnet_id
}

module "compute" {
  source = "./modules/compute"

  for_each = var.vms

  vm_name       = each.value.vm_name
  amount        = each.value.amount
  vm_size       = each.value.vm_size
  disk_capacity = each.value.disk_capacity

  resource_group_name = module.rg.resource_group_name
  location            = var.location
  subnet_id           = module.network.subnet_id
  data_set            = module.keyvault.data_set
  # depends_on = [
  #   module.keyvault
  # ]
}