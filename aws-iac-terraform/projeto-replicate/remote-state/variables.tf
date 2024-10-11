variable "environment" {
  type    = string
  default = "dev-remote"
}

variable "name_project" {
  type    = string
  default = "projeto-replicate-remote"
}

variable "region_east-1" {
  type    = string
  default = "us-east-1"
}


#Bucket variables
variable "aws_bucket_prefix" {
  type    = string
  default = "viniquartz"
}

variable "aws_dynamodb_table" {
  type    = string
  default = "viniquartz-tfstatelock"
}

variable "full_access_users" {
  type    = list(string)
  default = ["viniquartz"]
}