module "vpc" {
  source       = "../terraform-aws-vpc"
  project_name = var.project_name
  environment  = var.environment
  vpc_cidr     = var.cidr_block
  common_tags  = var.common_tags
  vpc_tags     = var.vpc_tags
}