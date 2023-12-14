module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-0adad6d7f81d8389d"

  private_subnets = ["subnet-0a9c690f90d591f3f", "subnet-07e1ca21141d84a5c"]
  public_subnets  = ["subnet-02ec3a17a1bd1ef0f", "subnet-03b50b77dfde89a51"]

}