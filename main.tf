terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=3.42.0"
    }
  }
}

provider "aws" {
  region  = var.location
}


module "aws-s3-challenge3Module" {
  source  = "app.terraform.io/amitgupta58/aws-s3-challenge3Module/provider"
  version = "1.0.0"
}
