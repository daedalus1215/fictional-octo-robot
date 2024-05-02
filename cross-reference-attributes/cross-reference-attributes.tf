resource "aws_vpc" "default" {
  cidr_block = "172.31.0.0/16"

  tags = {
    Name = "Default VPC"
  }
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.default.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "example" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "${aws_eip.lb.public_ip}/32"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = "172.31.1.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0a699202e5027c10d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id
}
