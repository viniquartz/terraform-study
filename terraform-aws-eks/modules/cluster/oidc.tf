data "tls_certificate" "vini_eks_cluster_oidc_tls_certificate" {
  url = aws_eks_cluster.vini_eks_cluster_eks.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "vini_eks_cluster_oidc_provider" {
  client_id_list = [
    "sts.amazonaws.com"
  ]
  thumbprint_list = [data.tls_certificate.vini_eks_cluster_oidc_tls_certificate.certificates[0].sha1_fingerprint]
  url             = data.tls_certificate.vini_eks_cluster_oidc_tls_certificate.url
}