module "vpc" {
  source      = "../../modules/vpc"
  cidr_block  = "10.0.0.0/16"
  subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
  subnet_count = 2
  vpc_name     = "Dev-VPC"
  common_tags  = { "Environment" = "Dev", "Owner" = "Team" }
}

module "ec2" {
  source       = "../../modules/ec2"
  ami          = "ami-2757f631"
  instance_type = "t2.micro"
  subnet_id    = module.vpc.subnet_ids[0]
  instance_name = "Dev-Instance"
  common_tags  = { "Environment" = "Dev", "Owner" = "Team" }
}
