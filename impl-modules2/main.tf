# main.tf (root directory)

provider "aws" {
  region = var.region
  # Add any other AWS provider configurations here if needed
}

module "aws_vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source = "./modules/ec2"

  region             = var.region
  instance_type      = var.instance_type
  ami                = var.ami
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  key_name           = var.key_name
}


output "main_ec2_output" {
  value = module.ec2.ec2_output
}