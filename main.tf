module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-0718dd0e10061be54"

  private_subnets = ["subnet-0b7aed0764037eea9", "subnet-05ecd600b2c11f47e"]
  public_subnets  = ["subnet-09575e3e20a44fcf3", "subnet-064c6ceaf996c0875"]

}