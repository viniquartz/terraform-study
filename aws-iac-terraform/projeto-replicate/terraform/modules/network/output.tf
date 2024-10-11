#EAST-1
output "vpc_id_out_east-1" {
  value = module.vpc-east.vpc_id
}

output "vpc_arn_out_east-1" {
  value = module.vpc-east.vpc_arn
}

output "subnet_app_id_out_east-1" {
  value = module.vpc-east.public_subnets
}

output "subnet_db_id_out_east-1" {
  value = module.vpc-east.database_subnets
}

#WEST-1
output "vpc_id_out_west-1" {
  value = module.vpc-west.vpc_id
}

output "vpc_arn_out_west-1" {
  value = module.vpc-west.vpc_arn
}

output "subnet_app_id_out_west-1" {
  value = module.vpc-west.public_subnets
}

output "subnet_db_id_out_west-1" {
  value = module.vpc-west.database_subnets
}