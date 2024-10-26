variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be used in all resources of the network module"
}

variable "eks_cluster_name" {
  type        = string
  description = "EKS Cluster name to use in Managed Node Group"
}

variable "subnet_priv_1a_id" {
  type        = string
  description = "Private subnet to create MNG"
}

variable "subnet_priv_1b_id" {
  type        = string
  description = "Private subnet to create MNG"
}