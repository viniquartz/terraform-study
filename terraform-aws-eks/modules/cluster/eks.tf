resource "aws_eks_cluster" "vini_eks_cluster_eks" {
  name     = "${var.project_name}-cluster"
  role_arn = aws_iam_role.vini_eks_iam_role_cluster.arn

  vpc_config {
    subnet_ids = [
      var.subnet_pub_1a_id,
      var.subnet_pub_1b_id
    ]
  }

  depends_on = [
    aws_iam_role_policy_attachment.vini_eks_iam_role_attach,
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-cluster"
    }
  )
}