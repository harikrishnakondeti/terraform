terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "my-task-1-hari"
    key    = "finance/infra"
    region = "ap-south-1"
#   dynamodb_table = "finance-infra"
#    profile = "rsiva"
  }
}


provider "aws" {
  region  = "ap-south-1"
#  profile = "rsiva"
}
