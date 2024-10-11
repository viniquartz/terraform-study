terraform {
    backend "s3" {
        key = "management/remote-state/terraform.tfstate"
        bucket = "viniquartz-dev-remote-86679"
        dynamodb_table = "viniquartz-tfstatelock-dev-remote-86679"
        region = "us-east-1"
    }
}