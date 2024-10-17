resource "aws_vpc" "vini-eks-vpc" {
  cidr_block           = "10.10.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name    = "vini-eks-vpc"
    Project = "vini-eks"
  }
}