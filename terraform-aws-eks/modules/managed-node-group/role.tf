resource "aws_iam_role" "vini_eks_role_mng" {
  name = "${var.project_name}-iam-role-mng"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "ec2.amazonaws.com"
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-iam-role-mng"
    }
  )
}

resource "aws_iam_role_policy_attachment" "vini_eks_mng_role_attach_worker" {
  role       = aws_iam_role.vini_eks_role_mng.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "vini_eks_mng_role_attach_registry" {
  role       = aws_iam_role.vini_eks_role_mng.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly"
}

resource "aws_iam_role_policy_attachment" "vini_eks_mng_role_attach_cni" {
  role       = aws_iam_role.vini_eks_role_mng.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}