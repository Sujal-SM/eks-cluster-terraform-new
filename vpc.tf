module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${local.name}-vpc-11"
  cidr = local.cidr

  azs                = local.azs
  private_subnets    = local.private_subnets
  public_subnets     = local.private_subnets
  intra_subnets      = local.intra_subnets
  enable_nat_gateway = true
  enable_vpn_gateway = true
}