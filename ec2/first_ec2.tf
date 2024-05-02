resource "aws_instance" "my_ec2" {
  ami = "ami-0a699202e5027c10d"
  instance_type          = "t2.micro"
}
