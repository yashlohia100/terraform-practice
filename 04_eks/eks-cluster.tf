module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = "myapp-eks-cluster"
  kubernetes_version = "1.33"

  vpc_id     = module.myapp_vpc.vpc_id
  subnet_ids = module.myapp_vpc.private_subnets

  # Worker nodes configuration
  eks_managed_node_groups = {
    dev = {
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t2.small"]

      min_size     = 1
      max_size     = 3
      desired_size = 2
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
    application = "myapp"
  }
}
