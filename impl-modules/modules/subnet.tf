resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = "172.31.1.0/24"
  availability_zone = "us-east-1a"
}