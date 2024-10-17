terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.70.0"
    }
  }
  backend "s3" {
    bucket = "vini-eks-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}