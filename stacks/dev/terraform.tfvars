# VPC configuration
cidr_block = "10.0.0.0/16"
subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
subnet_count = 2
vpc_name = "Dev-VPC"

# EC2 configuration
ami = "ami-2757f631"
instance_type = "t2.micro"
instance_name = "Dev-Instance"

# Tags
common_tags = {
  Environment = "Dev"
  Owner       = "DevOps-Team"
  Compliance  = "ISO27001"
}
