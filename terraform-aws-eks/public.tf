resource "aws_subnet" "vini_eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.vini_eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "${var.project_name}-subnet-public-1a",
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "vini_eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.vini_eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "${var.project_name}-subnet-public-1b",
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_route_table_association" "vini_eks_rtb_assoc_pub_1a" {
  subnet_id      = aws_subnet.vini_eks_subnet_public_1a.id
  route_table_id = aws_route_table.vini_eks_public_route_table.id
}

resource "aws_route_table_association" "vini_eks_rtb_assoc_pub_1b" {
  subnet_id      = aws_subnet.vini_eks_subnet_public_1b.id
  route_table_id = aws_route_table.vini_eks_public_route_table.id
}