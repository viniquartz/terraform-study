variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be used in all resources of the network module"
}

variable "oidc_id" {
  type        = string
  description = "HTTPS url from OIDC provider of the EKS Cluster"
}

variable "eks_cluster_name" {
  type        = string
  description = "EKS Cluster name to be used in helm"
}