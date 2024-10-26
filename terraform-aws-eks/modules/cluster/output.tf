output "iam_role_cluster_arn" {
  value = aws_iam_role.vini_eks_role_cluster.arn
}

output "eks_cluster_sg_id" {
  value = aws_eks_cluster.vini_eks_cluster_eks.vpc_config[0].cluster_security_group_id
}

output "eks_cluster_oidc" {
  value = data.tls_certificate.vini_eks_cluster_oidc_tls_certificate.certificates[0].sha1_fingerprint
}

output "eks_cluster_name" {
  value = aws_eks_cluster.vini_eks_cluster_eks.id
}