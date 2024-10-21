resource "aws_iam_role" "vini_eks_iam_role_cluster" {
  name = "${var.project_name}-iam-role-cluster"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "eks.amazonaws.com"
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-iam-role-cluster"
    }
  )
}

resource "aws_iam_role_policy_attachment" "vini_eks_iam_role_attach" {
  role       = aws_iam_role.vini_eks_iam_role_cluster.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}