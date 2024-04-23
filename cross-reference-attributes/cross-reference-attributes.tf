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
    name = "allow_tls"
    description = "Allow TLS inbound traffic and all outbound traffic"
    vpc_id = aws_vpc.default.id

    tags = {
        Name = "allow_tls"
    }
}

resource "aws_vpc_security_group_ingress_rule" "example" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "${aws_eip.lb.public_ip}/32"
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}