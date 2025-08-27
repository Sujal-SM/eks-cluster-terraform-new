module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name                   = "${local.name}-11"
  kubernetes_version     = "1.33"
  endpoint_public_access = true

  addons = {
    coredns    = { most-recent = true }
    kube-proxy = { most-recent = true }
    vpc-cni    = { most-recent = true }
  }

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets

  eks_managed_node_groups = {
    example = {
      # Starting on 1.30, AL2023 is the default AMI type for EKS managed node groups
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t3.micro"]

      min_size     = 2
      max_size     = 3
      desired_size = 2
      create_security_group                 = true
      attach_cluster_primary_security_group = true

      tags = {
        ExtraTag = "MyCluster-${local.name}-11"
      }
    }
  }

  tags = local.tags
}
