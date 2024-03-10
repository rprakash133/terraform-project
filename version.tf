terraform {
  required_version = "~> 1.7.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.0" # Use a version range between 4.5.0 (inclusive) and 5.0.0 (exclusive)
    }
  }
}


# provider block
provider "aws" {
  region = var.aws_region
}