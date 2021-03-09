resource "kubernetes_service_account" "eks-service-account" {
  metadata {
    name = "demo-user"
    namespace = "default"

    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.eks-service-account-role.arn
    }
  }
}
