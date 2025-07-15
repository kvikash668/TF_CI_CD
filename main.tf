
terraform {
  cloud {

    organization = "TERRAFORM_LEARN668"

    workspaces {
      name = "LEARN668_CLI"
    }
  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-2"
}

# Create a VPC
resource "aws_vpc" "peer" {
  cidr_block = "10.1.0.0/16"
}
