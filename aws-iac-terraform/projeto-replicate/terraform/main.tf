module "network" {
  source = "./modules/network"
  #EAST-1
  name_vpc_east-1        = format("%s-%s-%s-%s", "vpc", var.name_project, var.environment, var.region_east-1)
  name_subnet_app_east-1 = format("%s-%s-%s-%s", "subnet-app", var.name_project, var.environment, var.region_east-1)
  name_subnet_db_east-1  = format("%s-%s-%s-%s", "subnet-db", var.name_project, var.environment, var.region_east-1)
  #WEST-1
  name_vpc_west-1        = format("%s-%s-%s-%s", "vpc", var.name_project, var.environment, var.region_west-1)
  name_subnet_app_west-1 = format("%s-%s-%s-%s", "subnet-app", var.name_project, var.environment, var.region_west-1)
  name_subnet_db_west-1  = format("%s-%s-%s-%s", "subnet-db", var.name_project, var.environment, var.region_west-1)
}

module "codetools" {
  source = "./modules/codetools"

}