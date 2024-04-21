resource "aws_vpc" "default" {
  cidr_block = "172.31.0.0/16"

  tags = {
    Name = "Default VPC"
  }
}

resource "aws_security_group" "allow_tls" {
    name = "allow_tls"
    description = "Allow TLS inbound traffic and all outbound traffic" # This references the vpc_id attribute of the aws_vpc resource
    vpc_id = aws_vpc.default.id
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
    security_group_id = aws_security_group.allow_tls.id
    cidr_ipv4 =  "0.0.0.0/0"
    from_port = 80
    ip_protocol = "tcp"
    to_port = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1" # semantically equivalent to all ports
}

