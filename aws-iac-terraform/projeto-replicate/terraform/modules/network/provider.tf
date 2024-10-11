provider "aws" {
  region = "us-east-1"
  alias  = "east-1"
  profile = "east-1"
}

provider "aws" {
  region = "us-west-1"
  alias  = "west-1"
  profile = "west-1"
}