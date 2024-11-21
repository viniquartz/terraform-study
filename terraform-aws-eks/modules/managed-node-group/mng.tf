resource "aws_eks_node_group" "vini_eks_mng" {
  cluster_name    = var.eks_cluster_name
  node_group_name = "${var.project_name}-mng"
  node_role_arn   = aws_iam_role.vini_eks_role_mng.arn
  subnet_ids = [
    var.subnet_priv_1a_id,
    var.subnet_priv_1b_id
  ]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  instance_types = ["t2.micro"]
  capacity_type  = "ON_DEMAND"
  ami_type       = "AL2_x86_64"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-mng"
    }
  )

  depends_on = [
    aws_iam_role_policy_attachment.vini_eks_mng_role_attach_worker,
    aws_iam_role_policy_attachment.vini_eks_mng_role_attach_registry,
    aws_iam_role_policy_attachment.vini_eks_mng_role_attach_cni,
  ]
}