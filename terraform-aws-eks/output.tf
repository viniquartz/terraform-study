output "subnet_pub_1a_id" {
  value = module.vini_eks_network.subnet_pub_1a_id
}

output "subnet_pub_1b_id" {
  value = module.vini_eks_network.subnet_pub_1b_id
}

output "subnet_priv_1a_id" {
  value = module.vini_eks_network.subnet_priv_1a_id
}

output "subnet_priv_1b_id" {
  value = module.vini_eks_network.subnet_priv_1b_id
}

output "eks_cluster_sg_id" {
  value = module.vini_eks_cluster.eks_cluster_sg_id
}

output "eks_cluster_oidc_fingerprint" {
  value = module.vini_eks_cluster.eks_cluster_oidc
}