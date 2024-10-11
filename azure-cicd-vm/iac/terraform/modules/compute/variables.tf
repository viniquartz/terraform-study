variable "resource_group_name" {
  default = ""
}

variable "location" {
  default = ""
}

#module network
variable "subnet_id" {
  default = ""
}

variable "subnet_name" {
  default = ""
}

#module compute
variable "vm_name" {
  default = ""
}

variable "amount" {
  default = ""
}

variable "vm_size" {
  default = ""
}

variable "disk_capacity" {
  default = ""
}

#variable "vm_data_0" {
#  default = ""
#}

variable "vault_id" {
  default = ""
}

variable "key_id" {
  default = ""
}

variable "data_set" {
  default = ""
}
