

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "14.0.0"
  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  subnets = var.subnets
  vpc_id = var.vpc_id
  map_roles = local.role_map_obj

  node_groups_defaults = {
    disk_size = var.node_group_default_disk_size
  }

  node_groups = {
    demo = {
      desired_capacity = var.node_group_desired_capacity
      max_capacity     = var.node_group_max_capacity
      min_capacity     = var.node_group_min_capacity
      instance_types = [var.node_group_default_instance_type]
      k8s_labels = {
        Environment = "demo"
      }
    }
  }
}
