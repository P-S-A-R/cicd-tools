terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "wastebucket"
    key    = "expense-cicd"
    region = "us-east-1"
    dynamodb_table = "wastelocking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}