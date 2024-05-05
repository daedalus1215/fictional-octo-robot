# main.tf (ec2 module directory)

resource "aws_instance" "ec2_instance" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  # Attach the specified security groups to the instance
  security_groups = var.security_group_ids
}


output "ec2_output" {
  value = aws_instance.ec2_instance[*].key_name
}