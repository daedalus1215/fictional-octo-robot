resource "aws_vpc" "default" {
  cidr_block = var.default_vpc_cidr_block

  tags = {
    Name = "Default VPC"
  }
}

output "aws_vpc_output" {
  value = aws_vpc.default.cidr_block
}