terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.60.0"
    }
  }

  backend "s3" {
    bucket  = "adriano-estudo-terraform-1234143"
    key     = "aws-ec2/terraform.tfstate"
    region  = "us-east-1"
    profile = "terra"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = var.profile

  default_tags {
    tags = {
      owner      = "adriano"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "adriano-estudo-terraform-1234143"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
    profile = "terra"
  }
}