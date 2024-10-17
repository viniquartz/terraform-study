resource "aws_subnet" "vini_eks_subnet_private_1a" {
  vpc_id            = aws_vpc.vini_eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    local.tags,
    {
      Name                              = "vini-eks-subnet-private-1a",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "vini_eks_subnet_private_1b" {
  vpc_id            = aws_vpc.vini_eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    local.tags,
    {
      Name                              = "vini-eks-subnet-private-1b",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}