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

# MODULE CODETOOLS
variable "aws_bucket_prefix" {
  type    = string
  default = ""
}

variable "region" {
  type    = string
  default = ""
}

variable "state_bucket" {
  type        = string
  description = "Name of bucket for remote state"
  default = ""
}

variable "dynamodb_table_name" {
  type        = string
  description = "Name of dynamodb table for remote state locking"
  default = ""
}

variable "code_commit_user" {
  type        = string
  description = "Username of user to grant Power User access to Code Commit"
  default = ""
}

variable "codebuild_terraform_version" {
  type        = string
  description = "Version of Terraform to use for CodeBuild"
  default     = ""
}