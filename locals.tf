locals {
  name            = "example"
  azs             = ["ap-south-1a", "ap-south-1b"]
 private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
intra_subnets   = ["10.0.5.0/24", "10.0.6.0/24"]
  cidr            = "10.0.0.0/16"

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}


