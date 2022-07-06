variable "use_fips_endpoint" {
  description = "Whether to use FIPS endpoints for AWS API requests"
  default     = "true"
}

provider "aws" {
  use_fips_endpoint = var.use_fips_endpoint == "true" ? true : false
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.21.0"
    }
  }
  required_version = "~> 1.1.0"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket.myawesomeexample.com"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
