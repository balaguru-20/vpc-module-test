module "vpc" {
  # source                = "../terraform-aws-vpc"  #local repo
  source                = "git::https://github.com/balaguru-20/terraform-aws-vpc.git?ref=main" #referring from git repo
  project_name          = var.project_name
  environment           = var.environment
  vpc_cidr              = var.cidr_block
  common_tags           = var.common_tags
  vpc_tags              = var.vpc_tags
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  is_peering_required   = true
}