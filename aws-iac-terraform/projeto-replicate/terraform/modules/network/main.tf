data "aws_availability_zones" "azs_east-1" {
  provider = aws.east-1
}

data "aws_availability_zones" "azs_west-1" {
  provider = aws.west-1
}

module "vpc-east" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.4"

  providers = {
    aws = aws.east-1
  }

  name = var.name_vpc_east-1
  cidr = "10.0.0.0/16"

  azs = slice(data.aws_availability_zones.azs_east-1.names, 0, 2)

  public_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  # public_subnet_group_name = var.name_subnet_app
  # public_subnet_group_tags = {
  #   subnet_type = "app"
  # }

  database_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  # database_subnet_group_name = var.name_subnet_db
  # database_subnet_group_tags = {
  #   subnet_type = "database"
  # }

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Name        = "vpc-vini-east"
    Project     = var.name_project
  }
}

module "vpc-west" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.4"

  providers = {
    aws = aws.west-1
  }

  name = var.name_vpc_west-1
  cidr = "10.1.0.0/16"

  azs = slice(data.aws_availability_zones.azs_west-1.names, 0, 2)

  public_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  # public_subnet_group_name = var.name_subnet_app
  # public_subnet_group_tags = {
  #   subnet_type = "app"
  # }

  database_subnets = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]
  # database_subnet_group_name = var.name_subnet_db
  # database_subnet_group_tags = {
  #   subnet_type = "database"
  # }

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Name        = "vpc-vini-west"
    Project     = var.name_project
  }
}

#============== OLD TEST ================

#resource "aws_vpc" "main" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     nome = "vpc-main"
#     projeto = "replicate"
#   }
# }

# resource "aws_subnet" "app" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     nome = "main-subnet-app"
#     projeto = "replicate"
#   }
# }

# resource "aws_subnet" "db" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.2.0/24"

#   tags = {
#     nome = "main-subnet-db"
#     projeto = "replicate"
#   }
# }