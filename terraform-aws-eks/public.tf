resource "aws_subnet" "vini_eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.vini_eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "vini-eks-subnet-public-1a"
    Project = "vini-eks"
  }
}

resource "aws_subnet" "vini_eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.vini_eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "vini-eks-subnet-public-1b"
    Project = "vini-eks"
  }
}