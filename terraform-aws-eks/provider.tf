terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.70.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.33.0"
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

provider "kubernetes" {
  host                   = module.vini_eks_cluster.eks_cluster_endpoint
  cluster_ca_certificate = base64decode(module.vini_eks_cluster.eks_cluster_ca)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", module.vini_eks_cluster.eks_cluster_name]
    command     = "aws"
  }
}