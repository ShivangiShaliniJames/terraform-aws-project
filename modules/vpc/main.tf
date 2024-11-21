resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(var.common_tags, { "Name" = var.vpc_name })
}

resource "aws_subnet" "main" {
  count                  = var.subnet_count
  vpc_id                 = aws_vpc.main.id
  cidr_block             = var.subnet_cidr_blocks[count.index]
  map_public_ip_on_launch = true

  tags = merge(var.common_tags, { "Name" = "Subnet-${count.index}" })
}
