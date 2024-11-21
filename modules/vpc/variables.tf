variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "A list of CIDR blocks for subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "subnet_count" {
  description = "Number of subnets to create"
  type        = number
  default     = 2
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "common_tags" {
  description = "Tags for all resources"
  type        = map(string)
}
