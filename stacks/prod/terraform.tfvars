# VPC configuration
cidr_block = "192.168.0.0/16"
subnet_cidr_blocks = ["192.168.1.0/24", "192.168.2.0/24"]
subnet_count = 2
vpc_name = "Prod-VPC"

# EC2 configuration
ami = "ami-0c55b159cbfafe1f0" # Example Prod AMI
instance_type = "t2.medium"
instance_name = "Prod-Instance"

# Tags
common_tags = {
  Environment = "Prod"
  Owner       = "Ops-Team"
  Compliance  = "SOC2"
}
