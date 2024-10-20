resource "aws_internet_gateway" "vini_eks_igw" {
  vpc_id = aws_vpc.vini_eks_vpc.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-igw"
    }
  )
}

resource "aws_route_table" "vini_eks_public_route_table" {
  vpc_id = aws_vpc.vini_eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vini_eks_igw.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-public-route-table"
    }
  )
}