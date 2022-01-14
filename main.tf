module "vpc" {
  source = "../terraform-aws-vpc-module"

}

module "rds" {
  source = "../terraform-aws-rds-module"
  depends_on = [
  module.vpc]
}

module "alb" {
  source     = "../terraform-aws-alb-module"
  subnet_ids = [module.vpc.public_subnet_1, module.vpc.public_subnet_2]
  depends_on = [
    module.vpc
  ]

}
