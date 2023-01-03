terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "amar-tf-state"
    key    = "finance/infra"
    region = "ap-south-1"
    dynamodb_table = "finance-infra"
    profile = "amar"
  }
}


provider "aws" {
  region  = "ap-south-1"
  profile = "amar"
}
