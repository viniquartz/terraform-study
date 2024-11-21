module "vini_eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "vini_eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  subnet_pub_1a_id = module.vini_eks_network.subnet_pub_1a_id
  subnet_pub_1b_id = module.vini_eks_network.subnet_pub_1b_id
}

module "vini_eks_managed_node_group" {
  source            = "./modules/managed-node-group"
  project_name      = var.project_name
  tags              = local.tags
  eks_cluster_name  = module.vini_eks_cluster.eks_cluster_name
  subnet_priv_1a_id = module.vini_eks_network.subnet_priv_1a_id
  subnet_priv_1b_id = module.vini_eks_network.subnet_priv_1b_id

  depends_on = [module.vini_eks_cluster]
}

module "load_balancer_controller" {
  source       = "./modules/lb-controller"
  project_name = var.project_name
  tags         = local.tags
  depends_on   = [module.vini_eks_managed_node_group]
  oidc_id      = module.vini_eks_cluster.eks_cluster_oidc
}