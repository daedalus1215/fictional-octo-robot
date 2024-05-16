resource "aws_vpc" "name" {
    cidr_block = var.vpc_cidr_block
    enable_dns_hostnames = true

    tags = {
        "Name" = "${var.environment}-vpc"
    }
}