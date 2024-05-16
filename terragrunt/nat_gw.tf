resource "aws_nat_gateway" "nat_gw" {
  subnet_id = element(aws_subnet.eks_private_subnets.*.id, 0)
}