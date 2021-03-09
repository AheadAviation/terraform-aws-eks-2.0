variable "region" {
  type	= string
  default = "us-east-2"
}

variable "cluster_name" {
  description = "Name of the EKS cluster. Also used as a prefix in names of related resources"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version to use for the EKS cluster"
  type        = string
}

variable "subnets" {
  description = "A list of subnets to place the EKS cluster and workers within"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC where the cluster and workers will be deployed"
  type        = string
}

variable "assume_developer_role" {
  description = "A list of ARN's of users/roles that can assume the cluster_developer role"
  type	      = list(string)
}

variable "node_group_default_disk_size" {
  description = "Default size of EBS volume to attach to each EC2 intance in the node group"
  type	= string
  default = "50"
}

variable "node_group_default_instance_type" {
  description = "Default EC2 instance type for the node group"
  type  = string
  default = "m5.large"
}

variable "node_group_desired_capacity" {
  description = "The desired number of EC2 instances in the node group"
  type  = string
  default = "1"
}

variable "node_group_min_capacity" {
  description = "The minimum number of EC2 instances in the node group at a given time"
  type  = string
  default = "1"
}

variable "node_group_max_capacity" {
  description = "The maximum number of EC2 instances in the node group at a given time. Used when auto scaling is enabled"
  type  = string
  default = "3"
}

