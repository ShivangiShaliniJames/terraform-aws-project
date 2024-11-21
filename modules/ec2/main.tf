resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  tags          = merge(var.common_tags, { "Name" = var.instance_name })
}
