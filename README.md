# terraform-aws-eks-2.0

Terraform code to create a managed Kubernetes cluster on Amazon EKS. Available
through the [Terraform registry](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws).
Features include:
* Automating the configuration of the aws-auth ConfigMap and provision IAM Roles in same code base
* Automating the Service Account annotation for IAM Role consumption
* Automating the EKS OIDC Identity Provider as a trusted IAM Identity Provider
*

## Assumptions

