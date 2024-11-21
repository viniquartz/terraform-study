resource "kubernetes_service_account" "vini_eks_lb_controller_sa" {
  metadata {
    name      = "aws-load-balancer-controller"
    namespace = "kube-system"
    annotations = {
      "eks.amazon.com/role-arn" = aws_iam_role.vini_eks_role_lb_controller.arn
    }
  }
}
#https://docs.aws.amazon.com/eks/latest/userguide/lbc-manifest.html