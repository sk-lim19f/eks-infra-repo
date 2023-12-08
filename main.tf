module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-090c39e9e93fcbb15"

  private_subnets = ["subnet-0c9fbe6c770ba2f2a", "subnet-032f4d47c9f61bd4c"]
  public_subnets  = ["subnet-05e5a48293124460b", "subnet-0491da179f582def7"]

}