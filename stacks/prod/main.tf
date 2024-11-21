module "vpc" {
  source      = "../../modules/vpc"
  cidr_block  = var.cidr_block
  subnet_cidr_blocks = var.subnet_cidr_blocks
  subnet_count = var.subnet_count
  vpc_name     = var.vpc_name
  common_tags  = var.common_tags
}

module "ec2" {
  source       = "../../modules/ec2"
  ami          = var.ami
  instance_type = var.instance_type
  subnet_id    = module.vpc.subnet_ids[0]
  instance_name = var.instance_name
  common_tags  = var.common_tags
}
