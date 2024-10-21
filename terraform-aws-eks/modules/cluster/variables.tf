variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be used in all resources of the network module"
}

variable "subnet_pub_1a_id" {
  type        = string
  description = "Subnet to create EKS Cluster AZ 1a"
}

variable "subnet_pub_1b_id" {
  type        = string
  description = "Subnet to create EKS Cluster AZ 1b"
}