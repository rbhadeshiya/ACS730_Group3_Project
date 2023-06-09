# Module to deploy dev networking 
module "staging" {
  source               = "/home/ec2-user/environment/ACS730_Group3_Project/modules/aws_network"
  env                  = var.env
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  prefix               = var.prefix
  default_tags         = var.default_tags
}
