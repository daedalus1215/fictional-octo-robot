resource "aws_instance" "my_ec2" {
  ami           = "ami-0a699202e5027c10d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id

  lifecycle {
    ignore_changes = [tags]
  }
}

resource "aws_ec2_tag" "example" {
  resource_id = aws_instance.my_ec2.id
  key         = "Name"
  value       = "tagNames"
}