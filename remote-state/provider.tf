terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
  
  backend "s3" {
    bucket = "kiran-aws" #bucket name
    key    = "remote-state-demo"  # unique s3 key name for every repo
    region = "us-east-1"
    dynamodb_table = "locking-table"
  }
}



provider "aws" {
  region = "us-east-1"
}