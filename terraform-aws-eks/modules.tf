module "vini_eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "vini_eks_cluster" {
  source       = "./modules/cluster"
  project_name = var.project_name
  tags         = local.tags
}