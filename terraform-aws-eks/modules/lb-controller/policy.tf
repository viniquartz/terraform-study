resource "aws_iam_policy" "vini_eks_lbc_policy" {
  name   = "${var.project_name}-lbc-policy"
  policy = file("${path.module}/iam_policy.json")

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-lbc-policy"
    }
  )
}