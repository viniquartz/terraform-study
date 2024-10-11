variable "resource_group_name" {
  default = ""
}

variable "location" {
  default = ""
}

variable "name_project" {
  default = ""
}

#module network
variable "vnet_id" {
  default = ""
}

variable "vnet_name" {
  default = ""
}

variable "subnet_id" {
  default = ""
}

variable "subnet_name" {
  default = ""
}

variable "vault_id" {
  default = ""
}

variable "key_id" {
  default = ""
}

variable "data_set" {
  default = ""
}

variable "vms" {
  type = map(any)
  default = {
    vms-application = {
      vm_name       = "application",
      amount        = 1,
      vm_size       = "Basic_A1",
      disk_capacity = 256
    },
    vms-data = {
      vm_name       = "data",
      amount        = 1,
      vm_size       = "Basic_A1",
      disk_capacity = 256
    }
  }
}