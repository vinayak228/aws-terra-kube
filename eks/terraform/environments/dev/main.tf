
module "vpc" {
  source = "../../modules/vpc"

  region          = "us-east-1"
  cluster_name    = "eks-dev"
  vpc_cidr        = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]

  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
}

module "eks" {
  source = "../../modules/eks"

  cluster_name         = "eks-dev"
  vpc_id               = module.vpc.vpc_id
  private_subnet_ids   = module.vpc.private_subnet_ids
}

module "nodegroup" {
  source = "../../modules/nodegroup"

  cluster_name       = module.eks.cluster_name
  private_subnet_ids = module.vpc.private_subnet_ids

  desired_size = 1
  min_size = 1
  max_size = 2
  instance_types = ["c7i-flex.large"]
}

