resource "aws_instance" "my_ec2" {
  ami                    = "{AMI-KEY}"
  instance_type          = "t2.micro"
}
